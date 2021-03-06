findM4UpperNormalCheck:=function(N1, N2)
    # GAP function for finding groups G with an M_4 upper interval [H, G] in Sub(G)
    # and such that H is core free in G.  (The reason for the core-free restriction is that
    # if [H, G] is M_4 with core(H) non-trivial, then [H/core(H), G/core(H)] is M_4 and this 
    # M_4 interval will have been found at an earlier iteration in the search loop.
    # Also, the indices [G:H] and [G/core(H):H/core(H)] are the same, so the "new" interval
    # [H,G] is redundant and should not count as a new example.)
    # 
    # INPUT  
    #        (N1, N2) search among all groups G of order |G| between N1 and N2.
    #
    # OUTPUT
    #        findM4UpperN1-N2.out  a file containing a list of groups with this property.
    #        The first few lines of the output file will look something like this:
    #
    #        |M_4|  [G:H]  max[G:H]  NotSolv  TotNotSolv   GAPid       atom indices           [H, G]   
    #
    #        0  6  6  0  0     (6, 1)    [ 1, 2, 3, 4 ]         [ 1 , S3 ]
    #        1  9  9  0  0     (9, 2)    [ 1, 2, 3, 4 ]         [ 1 , C3 x C3 ]
    #        2  9  9  0  0     (18, 4)    [ 2, 5, 8, 11 ]         [ C2 , (C3 x C3) : C2 ]
    #
    #        Interpretation of each column (using the last row above as an example): 
    #          - 2  (one less than) how many M4's have been found so far
    #          - 9  the index [G:H]
    #          - 9  the maximum index [G:H] that has been found so far
    #          - 0  the group in this row is solvable (1 => insoluble)
    #          - 0  the number of insoluble examples found so far
    #          - (18,4)  the GAP identifier for this group (get this group with G:=SmallGroup(18,4);)
    #          - [ 2, 5, 8, 11 ] the indices of the atoms (as maximal subgroups of G)  
    #              Get these subgroups with ms:= MaximalSubgroups(G); K1:=ms[2]; K2:=m2[5], etc.
    #
    # NOTES
    #
    #        Here's how to verify that the non-core-free redundancy is really a redundancy:
    #
    #        Take an arbitrary example found by the old program, findM4UpperRedundant.g, but not
    #        by the new findM4Upper.g.  We verify that findM4Upper.g found an isomorphic example;
    #        e.g.,
    #
    #        10  9  9  0  0     (72, 31)    [ 4, 7, 10, 13 ]         [ Q8 , (C3 x C3) : Q8 ]
    #
    #        G:=SmallGroup(72,31);         # (C3 x C3) : Q8
    #        ms:=MaximalSubgroups(G);
    #        K1:=ms[4];  K2:=ms[7];        # two of the four atoms in the list [4, 7, 10, 13] above
    #        H:=Intersection(K1,K2);       # Q8
    #        N:=Core(G,H);                 # The largest normal subgroup of G contained in H
    #        hom := NaturalHomomorphismByNormalSubgroup( G, N );
    #        GmodN := Image(hom);          # G/N
    #        hom := NaturalHomomorphismByNormalSubgroup( H, N );
    #        HmodN := Image(hom);          # H/N
    #        StructureDescription(GmodN);  # (C3 x C3) : C2
    #        StructureDescription(HmodN);  # C2
    # 
    #        Now notice that this interval [H/N, G/N] = [C2 , (C3 x C3) : C2] was already found --
    #        it's the third example in the output file (described in the OUTPUT section above).
    # 
    # Author: William DeMeo <williamdemeo@gmail.com>
    # Date: 2011.01.20
    # 
    
    local pathname, filename, outfile, i, j, k, p, q, r, s, t, u, v, numsg, G, H, ms, numms, count, intSubs, nsolv,
          msind, zeros, threes, mark, coreflag, core, numcounters, flag, meetcnt, maxindx, minindx, indx, e, totnsolv;

    numcounters := 0;    # running total of number of groups with an M4
    totnsolv := 0;       # running total of number of groups with M4 that are not solvable
    nsolv := 0;          # nsolv=1 indicates that the current group is not solvable
    maxindx := 0;
    minindx := 9999;
    pathname := "~/pub/DeMeo/research/LatticeTheory/GAP/";
    filename := Concatenation(pathname, "outputs/M4/findM4Upper", String(N1), "-", String(N2), ".out");
    outfile := OutputTextFile(filename, false);
    SetPrintFormattingStatus(outfile, false);   # This prevents automatic indentation and line breaks.
    
    PrintTo(outfile, "Small groups of orders ",  String(N1), " up to ", String(N2), " with an upper M4\n\n");
    AppendTo(outfile, "|M_4|  [G:H]  max[G:H]  NotSolv  TotNotSolv   GAPid       atom indices           [H, G]   \n");
    
    for i in [N1..N2] do
        
        meetcnt := 0;        # the number of maximal subgroups which meet at a single subgrous
        numsg := NumberSmallGroups(i);
        Print(numcounters, " Checking the ", numsg, " group(s) of order |G| = ", i, "...");
        
        for j in [1..numsg] do
            flag :=0; 
            G := SmallGroup(i,j);
            e := Group([Identity(G)]);
            ms := MaximalSubgroups(G);
            numms := Size(ms);
            if numms < 4 then
                # do nothing
            else
                
                # p is the 1st atom
                for p in [1..(numms-3)] do
                    if flag=0 then   # let's just limit ourselves to one M4 per group
                        
                        # q is the 2nd atom
                        for q in [(p+1)..(numms-2)] do
                            if flag=0 then   # limit to one M4 per group
                                
                                H := Intersection(ms[p],ms[q]);
                                
                                # checking normality is faster than computing the entire core
                                # so inserting the following speeds things up a bit
                                if IsNormal(G,H) and H<>e then
                                    
                                    # do nothing
                                    
                                    # check that H is core-free
                                    elif Core(G,H)=e then   
                                
                                    # check that [H, G] has exactly 4 intermediate subgroups
                                    intSubs := IntermediateSubgroups(G, H);
                                    if Size(intSubs.subgroups)=4 then
                                        
                                        # r is the 3rd atom
                                        for r in [(q+1)..(numms-1)] do
                                            if H = Intersection(ms[p],ms[r]) and 
                                               H = Intersection(ms[q],ms[r]) then
                                                meetcnt := Maximum(meetcnt, 3);
                                                
                                                # s is the 4th atom
                                                for s in [(r+1)..numms] do
                                                    if H = Intersection(ms[p],ms[s]) and 
                                                       H = Intersection(ms[q],ms[s]) and
                                                       H = Intersection(ms[r],ms[s]) then
                                                        meetcnt := Maximum(meetcnt, 4);
                                                        
                                                        if not IsSolvable(G) then
                                                            nsolv:=1;
                                                            totnsolv := totnsolv + nsolv;
                                                        else
                                                            nsolv := 0;
                                                        fi;
                                                        
                                                        msind := List([p, q, r, s]);
                                                        
                                                        flag :=1;  # we have found at least one M4 in this group;
                                                                   # with this flag set, we'll move on to the next group
                                                        
                                                        indx := Index(G,H);
                                                        minindx := Minimum(minindx, indx);
                                                        maxindx := Maximum(maxindx, indx);
                                                        
                                                        Print("\n", numcounters, "  ", indx, "  ", maxindx, "  ", nsolv, 
                                                              "  ", totnsolv, "   M_4: GAPid = [", i, ", ", j, "]    [H, G] = [", 
                                                              StructureDescription(H), ", ", StructureDescription(G), " ]  \n");
                                                        AppendTo(outfile, numcounters, "  ", indx, "  ", maxindx, "  ", nsolv, 
                                                                "  ", totnsolv, "     (", i, ", ", j, ")    ", msind, "         [ ", 
                                                                StructureDescription(H), " , ", StructureDescription(G), " ]\n"); 
                                                    fi;
                                                od; # s
                                            fi;
                                        od;  # r
                                    fi; # core-free check
                                fi;
                            fi; # if flag=0
                        od;   # q
                    fi;   # if flag=0
                od;  # p
            fi;
            numcounters := numcounters + flag;
        od;
        #        Print(" ... done (max number of meets = ", meetcnt, ")");
        Print(" ...done  (max/min index = ", maxindx, "/", minindx, ";   ", totnsolv, " insoluble examples) \n");
    od;
end;;

