# Conjecture: If G is a transitive group, and Gx the stabilizer of a point x,
# then there is no transitive group (nor primitive group) in the interval [Gx, G].

# Let's verify this on some small transitive groups.

transitiveConjecture:=function(n)
    
    local numtrgps, numintsubs, g, h, intsubs, i, j, k, numtrns, numprim;
    numtrgps:=NrTransitiveGroups(n);
    numtrns:=0;
    numprim:=0;
    
    for j in [1..numtrgps] do
        Print("Checking ", j, "/", numtrgps, "...  (", numtrns, " transitives;  ", numprim, " primitives) \n");
        g:=TransitiveGroup(n,j);
        h:=Stabilizer(g,1);
        intsubs:=IntermediateSubgroups(g,h);
        numintsubs:=Size(intsubs.subgroups);
        for i in [1..numintsubs] do
            k:=intsubs.subgroups[i];
            if IsTransitive(k) then
                numtrns:=numtrns+1;
                Print("Found a counterexample: TransitiveGroup(", n, ",", j, ");  Int subgroup: ", i, "\n");
                Print("       K = ", StructureDescription(k), " < ", StructureDescription(g), " = G\n");
            fi;
            if IsPrimitive(k) then
                numprim:=numprim+1;
            fi;         
        od;
    od;
end;

transMaxSubgroups:=function(n)
    
    local numtrgps, nummaxsubs, g, h, intsubs, i, j, k, numtrns, numprim, maxsubs, numnormal;
    numtrgps:=NrTransitiveGroups(n);
    numtrns:=0;
    numprim:=0;
    numnormal:=0;
    
    for j in [1..numtrgps] do
        Print("Checking ", j, "/", numtrgps, "...  (", numtrns, " transitive;  ", numprim, " primitive;  ", numnormal, " normal) \n");
        g:=TransitiveGroup(n,j);
        h:=Stabilizer(g,1);
        maxsubs:=MaximalSubgroupClassReps(g);
        nummaxsubs:=Size(maxsubs);
        for i in [1..nummaxsubs] do
            k:=maxsubs[i];
            if IsTransitive(k) then
                numtrns:=numtrns+1;
                Print("Found maxl trans subgroup of TransitiveGroup(", n, ",", j, ");  max subgroup: ", i, "\n");
                Print(" Stab(1) = ", StructureDescription(h), ";     K = ", StructureDescription(k), " < ", StructureDescription(g), " = G;");
                if IsPrimitive(k) then
                    numprim:=numprim+1;
                fi;         
                if IsNormal(g,k) then
                    Print("       K is normal in G\n\n");
                    numnormal:=numnormal+1;
                else     
                    Print("       K is not normal in G\n\n");
                fi;         
            fi;
            
        od;
    od;
end;



testConj:=function(n,j,k)
    
    local G, Gx, K, Kx, maxsubs, intGxG, intKxK, r, s;
    
    G:= TransitiveGroup(n,j);
    
    Gx:=Stabilizer(G,1);
    intGxG:=IntermediateSubgroups(G,Gx);
    maxsubs:=MaximalSubgroupClassReps(G);
    K:=maxsubs[k];
    Kx:=Stabilizer(K,1);
    intKxK:=IntermediateSubgroups(K,Kx);
    Print("\nG = ", StructureDescription(G), "      G1 = ", StructureDescription(Gx), "    [G:G1] = ", Index(G,Gx));
    Print("\nK = ", StructureDescription(K), "      K1 = ", StructureDescription(Kx), "   [G:K] = ", Index(G,K), "  [K:K1] = ", Index(K,Kx), "\n");
    
    Display(intGxG);
    Display(intKxK);
    
    L:=GraphicSubgroupLattice(G);
    InsertVertex(L, Gx);
    InsertVertex(L, K);
    InsertVertex(L, Kx);
    for s in [1..Size(intGxG.subgroups)] do
        InsertVertex(L, intGxG.subgroups[s]);
    od;
    for r in [1..Size(intKxK.subgroups)] do
        InsertVertex(L, intKxK.subgroups[r]);
    od;
    
end;

    
    
    
   
    
    
  