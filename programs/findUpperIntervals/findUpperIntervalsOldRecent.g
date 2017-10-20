findUpperIntervals:=function(n1, n2, abelian, solvable, core, minsz, maxsz)
    # GAP function which searches among all groups of order n, and outputs all
    # (isomorphism classes of) upper interval lattices.
    #
    # Inputs: n1,n2       search among groups G of order n1 <= |G| <= n2.
    #         abelian     if 0, don't include abelian groups in the search.
    #         solvable    if 0, don't include solvable groups in the search.
    #         core        if 0, don't include intervals [H,G] when H is not core-free. 
    #         minsz       ignore intervals with less than minsz elements
    #         maxsz       ignore intervals with more than maxsz elements
    #
    # Outpus: file        The output file is called output/findUpperIntervalsN.out where N=n.
    #                     It stores the non-isomorphic upper interval lattices
    #                     among all groups of order n. 
    #
    # Example: findUpperIntervals(3,255,1,1,0,4,10);
    #          # finds all upper intervals [H, G] of groups of orders 
    #          # 2 < |G| < 256 such that H is core free and such that the 
    #          # interval [H, G] contains at least 4 and at most 10 elements.
    #
    # To Do: 1. Debug: figure out why we're getting some intervals without first getting 
    #           all of their subintervals (which should appear in smaller groups).
    #        2. Store index of conjugacy class of which H is a representative.
    #        3. Rather than simply recording the (SmallGroup index of the) first group 
    #           in which a given lattice appears, we should store a list of (the SmallGroup 
    #           index of) *all* groups in which the given lattice appears.  This will 
    #           be useful when we want to look for lattices which can only occur (or cannot
    #           occur) in groups of a certain type.
    #
    # Question: If a lattice occurs as the interval L=[H,G] with H core-free and G solvable,
    #           can we always find a nonsolvable group G' such that L=[H',G'] and H' 
    #           core-free in G'?  
    #           (If we drop the core-free assumptions, then the answer is obviously yes: 
    #            take any non-solvable A and let G' = A x G.)
    #
    #           My motivation for asking this: if we can find a lattice L for which 
    #           L=[H,G] and H core-free implies G is either solvable or A_n or S_n,
    #           then we're done (by the parachute argument).  However, I suspect that 
    #           once you have L=[H,G] for some G, you will always have L=[H',G'] for 
    #           some non-solvable G'.
    #
    # Author: <williamdemeo@gmail.com>
    # Date: 2011.02.20
    #
    local i, j, k, m, r, s, pathname, filename, datfile, outfile, maxsize, first, incls, newcnt,
          G, e, cc, numcc, numsg, lats, latsize, obtained, intSubs, H;
    
    
    newcnt:=0;
    maxsize:=0;
    pathname := "~/pub/DeMeo/research/LatticeTheory/GAP/";
    
    # This one stores output in human readable format:
    filename := Concatenation(pathname, "outputs/UpperIntervals", String(n1), "to", String(n2), "Min", String(minsz), "Max", String(maxsz), ".out");
    outfile := OutputTextFile(filename, false);
    SetPrintFormattingStatus(outfile, false);   # This prevents automatic indentation and line breaks.
    
    # This one stores output in format that will be read in by BatchCovers2Hasse.m Matlab routine:
    datfile := Concatenation(pathname, "outputs/UpperIntervals", String(n1), "to", String(n2), "Min", String(minsz), "Max", String(maxsz), ".dat");
    datfile := OutputTextFile(datfile, false);
    SetPrintFormattingStatus(datfile, false);   # This prevents automatic indentation and line breaks.
    
    first := 1;    # the first conjugacy class to check 
    #    if full=0 then first:=2; fi;  # don't include the full subgroup interval [1, G]
    
    lats :=  [[[]]] ;  # stores lattices we have found 
    # lats[j] is a list of lists of lists e.g.
    # lats[5] = [ [ [0,1],[0,2],[1,3],[2,4],[3,4] ], [ [0,1],[0,2],[0,3],[1,4],[2,4],[3,4] ] ]
    # indicates that we have found two 5-element lattices (N5 and M3).
    
    for i in [n1..n2] do
        numsg := NumberSmallGroups(i);
        Print("Checking the ", numsg, " group(s) of order |G| = ", i, "...\n");
    
    
        for j in [1..numsg] do
            G := SmallGroup(i,j);
            if abelian=0 and IsAbelian(G) then
                # do nothing
            elif solvable=0 and IsSolvable(G) then
                # do nothing
            else
                e := Group([Identity(G)]);
                cc := ConjugacyClassesSubgroups(G);
                numcc := Size(cc);
                     
                for k in [first..numcc] do
                
                    H:= Representative(cc[k]);
                    obtained:=0;   # indicator (have we seen this lattice already?)
                    
                    # check that H is core-free
                    if core=0 and H<>e and IsNormal(G,H) then
                        # do nothing  
                        # (we first test for normality of H in G since 
                        #  it's faster than checking for core-freeness)
                    elif core=0 and Core(G,H)<>e then
                        # do nothing
                    else
                        intSubs := IntermediateSubgroups(G, H);
                        latsize := Size(intSubs.subgroups)+2;
                    
                        if minsz <= latsize and latsize <= maxsz then
                            incls := SSortedList(intSubs.inclusions);
                        
                            if IsBound(lats[latsize]) then
                        
                                # check if [H, G] is isomorphic to something we've already seen
                                if incls in lats[latsize] then
                                    # do nothing
                                    obtained := 1;
                                else
                                    # add this lattice to the list of representable lattices
                                    Add(lats[latsize], incls);
                                    newcnt:=newcnt+1;
                                fi;
                            
                            else
                                # add this lattice to the list of representable lattices
                                lats[latsize]:=[incls];
                                newcnt:=newcnt+1;
                            fi;
                            if obtained=0 then
                                AppendTo(outfile, "\n", newcnt, ".(", latsize, ")  G = SmallGroup(", i, ", ", j, ") = ", StructureDescription(G)," \n"); 
                                AppendTo(outfile, "       [", StructureDescription(H),", G] = ",  incls, "\n"); 
                                AppendTo(datfile, incls, "\n"); 
                                maxsize:= Maximum(maxsize, latsize);
                            fi;
                        fi;
                    fi;
                
                od;
            fi;
        od;
    od;
    AppendTo(outfile, "\n\n---------------------------------------------\n\n");
    AppendTo(outfile, "(i, j)     jth Lattice of size i\n\n");
    for r in [1..maxsize] do
        if IsBound(lats[r]) then
            if Size(lats[r])>0 then
                for s in [1..Size(lats[r])] do
                    AppendTo(outfile, "(", r, ",", s, ")   ", lats[r][s], "\n");
                od;
            fi;
        fi;
    od;
end;;
