findUpperIntervals:=function(n1, n2, abelian, solvable, core, full, minsz, maxsz, verbose)
    # GAP function which searches among all groups of order n, and outputs all
    # (isomorphism classes of) upper interval lattices.
    #
    # Inputs: n1,n2       search among groups G of order n1 <= |G| <= n2.
    #         abelian     if 0, don't include abelian groups in the search.
    #         solvable    if 0, don't include solvable groups in the search.
    #         core        if 0, don't include intervals [H,G] when H is not core-free. 
    #         full        if 0, don't include full subgroup intervals [1,G]
    #         minsz       ignore intervals with less than minsz elements
    #         maxsz       ignore intervals with more than maxsz elements
    #         verbose     if 0, suppress output of group names unless the group gives a new interval
    #
    # Outpus: file        The output file is called output/findUpperIntervalsN.out where N=n.
    #                     It stores the non-isomorphic upper interval lattices
    #                     among all groups of order n. 
    #
    local i, j, k, m, r, s, pathname, filename, outfile, maxsize, first, incls, newcnt,
          G, e, cc, numcc, numsg, lats, latsize, obtained, intSubs, H, printflag;
    
    newcnt:=0;
    maxsize:=0;
    pathname := "~/pub/DeMeo/research/LatticeTheory/GAP/";
    filename := Concatenation(pathname, "outputs/UpperIntervals", String(n1), "to", String(n2), "Min", String(minsz), "Max", String(maxsz), ".out");
    outfile := OutputTextFile(filename, false);
    SetPrintFormattingStatus(outfile, false);   # This prevents automatic indentation and line breaks.
    
    first := 1;    # the first conjugacy class to check 
    if full=0 then first:=2; fi;  # don't include the full subgroup interval [1, G]
    
    lats :=  [[[]]] ;  # stores lattices we have found 
    # lats[j] is a list of lists of lists e.g.
    # lats[5] = [ [ [0,1],[0,2],[1,3],[2,4],[3,4] ], [ [0,1],[0,2],[0,3],[1,4],[2,4],[3,4] ] ]
    # indicates that we have found two 5-element lattices (N5 and M3).
    
    for i in [n1..n2] do
        numsg := NumberSmallGroups(i);
        Print("Checking the ", numsg, " group(s) of order |G| = ", i, "...\n");
    
    
        for j in [1..numsg] do
            printflag:=0;
            G := SmallGroup(i,j);
            if abelian=0 and IsAbelian(G) then
                # do nothing
            elif solvable=0 and IsSolvable(G) then
                # do nothing
            else
                if verbose=0 then
                    # do nothing
                else
                    AppendTo(outfile, "\n", newcnt, ".(", latsize, ")   G = SmallGroup(", i, ", ", j, ") = ", StructureDescription(G)," \n"); 
                    printflag:=1;
                fi;
                e := Group([Identity(G)]);
                cc := ConjugacyClassesSubgroups(G);
                numcc := Size(cc);
                     
                for k in [first..numcc] do
                
                    H:= Representative(cc[k]);
                    obtained:=0;   # indicator (have we seen this lattice already?)
                    
                    # check that H is core-free
                    if core=0 and Core(G,H)<>e then
                        # do nothing
                    else
                        intSubs := IntermediateSubgroups(G, H);
                        latsize := Size(intSubs.subgroups)+2;
                    
                        if minsz <= latsize then
                            if latsize <= maxsz then
                                incls := SSortedList(intSubs.inclusions);
                        
                                if IsBound(lats[latsize]) then
                        
                                    # check if [H, G] is isomorphic to something we've already seen
                                    for m in [1..Size(lats[latsize])] do
                                        
                                        if lats[latsize][m] = incls then
                                            obtained := 1;
                                            break;
                                        fi;
                                    od;
                                    
                        
                                    if obtained=1 then
                                        # do nothing
                                    else
                                        # add this lattice to the list of representable lattices
                                        lats[latsize]:=List(lats[latsize], incls);
                                        newcnt:=newcnt+1;
                                   fi;
                            
                                else
                                    # add this lattice to the list of representable lattices
                                    lats[latsize]:=incls;
                                    newcnt:=newcnt+1;
                                fi;
                                if obtained=0 then
                                    if printflag=0 then
                                        AppendTo(outfile, "\n", newcnt, ".(", latsize, ")   G = SmallGroup(", i, ", ", j, ") = ", StructureDescription(G)," \n"); 
                                    fi;
                                    AppendTo(outfile, "          [", StructureDescription(H),", G] = ",  incls, "\n"); 
                                    maxsize:= Maximum(maxsize, latsize);
                                fi;
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
