    Bmp:=MovedPoints(G);
    N:=NrMovedPoints(G);
    K:=Length(aa);
    if K<>Length(bb) then
        Error("Usage: WJDrabbit([G, [a1,...,ak], [b1,...,bk],...]);  2nd and 3rd args must have same length."); 
    fi;
    for k in [1..K] do
        if not (aa[k] in Bmp) then
            Error("Usage: WJDrabbit([G, [a1,...,ak], [b1,...,bk],...]);  a",k," must be in the set B=MovedPoints(G)."); 
        fi;
        if not (bb[k] in Bmp) then
            Error("Usage: WJDrabbit([G, [a1,...,ak], [b1,...,bk],...]);  b",k," must be in the set B=MovedPoints(G)."); 
        fi;
        if aa[k]=bb[k] then
            Error("Usage: WJDrabbit([G, [a1,...,ak], [b1,...,bk],...]);  a",k,"=b",k,", but they must be distinct."); 
        fi;
    od;
    
    # Print the congruences and tie-points
    if VERBOSE then
        Print("\n--- CONGRUENCES of (B,G) --- \n");
        for blk in AllBlocks(G) do Print(Orbit(G,blk,OnSets), "\n"); od;
        Print("\ntie-points: a=", aa, ";  b=", bb, ";\n"); 
    fi;
    
    a:=[];  b:=[];    # the indices of the aa and bb in the set of moved points.
    for k in [1..K] do
        a[k]:=Position(Bmp,aa[k]);
        b[k]:=Position(Bmp,bb[k]);
    od;
        
    sizeA:= (K+2)*N-(K+1);
    B0:=[1..N];    # (indices of) the elements in original universe (the moved points of G)
    BB:=[];        # the rows of BB are B1, B2, B3, ...
    BB[1]:=B0+N;      # the left hand rabbit ear
    BB[1][a[1]]:=a[1];
    for j in [(a[1]+1)..N] do
        BB[1][j]:=BB[1][j]-1;
    od;
    for i in [2..K] do
        BB[i]:=[1..N]+BB[i-1][N];
        BB[i][a[i]]:=BB[i-1][b[i-1]];
        for j in [(a[i]+1)..N] do
            BB[i][j]:=BB[i][j]-1;
        od;
    od;
    BB[K+1]:=[1..N]+BB[K][N];
    BB[K+1][a[1]]:=BB[K][b[K]];   
    for j in [(a[1]+1)..N] do     #                     
        BB[K+1][j]:=BB[K+1][j]-1;
    od;
      
    if VERBOSE then
        Print("\n--- MINIMAL SETS --- \n");
        Print("B0    = ", B0-0, "\n");
        for k in [1..K+1] do
            Print("BB[", k, "] = ", BB[k], "\n");
        od;
    fi;
    
    if VERBOSE then
        Print("\nThe size of A is ", sizeA,". This should equal BB[K+1][N]=BB[",K+1,"][",N,"]=",BB[K+1][N],"\n");
        if BB[K+1][N]<>sizeA then
            Print("\nWARNING: the equality above is false, so we got the size of A wrong.\n");
        fi;
    fi;
    p0:=[];
    
    ### Construct p0 and r
    r:= [1..sizeA];
    p:=[];
    p[K+1]:=[1..sizeA];
    for x in [1..sizeA] do
        if x in B0 then
            p0[x]:=x;
            p[K+1][x]:=BB[K+1][x];
            r[x]:=a[1];
        elif x in BB[K+1] then
            p0[x]:=Position(BB[K+1], x);
            p[K+1][x]:=x;
            r[x]:=BB[K+1][a[1]];
        else
            p0[x]:=a[1];                     
            p[K+1][x]:=BB[K+1][a[1]];          
            r[x]:=x;
        fi;
    od;
    
    ### Construct the pi's
    for k in [1..K] do  #for k in [2..K] do
        p[k]:=[1..sizeA];
        for x in [1..sizeA] do
            if x in BB[k] then
                p[k][x]:=x;
            elif x < BB[k][1] or x< BB[k][2] # we have to check two since on of them could be the intersection point
              then  
                p[k][x]:=BB[k][a[k]];
            elif x > BB[k][N] then
                p[k][x]:=BB[k][b[k]];
            else
                Print("\nWARNING: Didn't expect to get here... There must be an error.\n");
            fi;
        od;
    od;        
    
    ### Construct the qij = sij pi
    q:=[];
    for i in [0..K+1] do
        q[i+1]:=[];
        if i=0 then 
            bi:=B0; pi:=p0; 
        else 
            bi:=BB[i]; pi:=p[i];
        fi;
        for j in [0..K+1] do
            if j=0 then bj:=B0; else bj:=BB[j]; fi;
            q[i+1][j+1]:=[1..sizeA];
            for x in [1..sizeA] do
                q[i+1][j+1][x]:=bj[Position(bi,pi[x])];
            od;
        od;
    od;
            
    ### Construct g p0, one for each g in G.
    gp0:=[];
    gens:=GeneratorsOfGroup(G);
    numgens:=Length(gens);
    for i in [1..numgens] do
        gp0[i]:=[1..sizeA];
        g:=gens[i];
        for j in [1..sizeA] do            
            x:=Bmp[p0[j]]^g;              # The p0[j]-th moved point is moved to x; 
            gp0[i][j]:=Position(Bmp, x);  # gp0[i][x]:= the index of x in Bmp.
        od;
    od;
    
    if VERBOSE then
        Print("\n--- OPERATIONS ---\n");
        Print("\nr = ", r, "\n");
        Print("\n------ pi's --------\n");
        Print("p0 = ", p0, "\n");
        for k in [1..K+1] do
            Print("p[", k, "] = ", p[k], "\n");
        od;
        Print("\n------ qij's --------\n");
        for i in [1..K+1] do
            for j in [1..K+1] do
                Print("q[", i, "][", j, "] = ", q[i][j], "\n");
            od;
        od;
        Print("\n------ gip0's --------\n");
        for i in [1..numgens] do
            Print("g", i, "p0 = ", gp0[i], "\n");
        od;
    fi;
    
    # now write the uacalc file
    PrintTo(uacalcfile, "<?xml version=\"1.0\"?>\n");
    
    if STORE_GSET then  ### First put the original G-set algebra in the uacalc file 
        AppendTo(uacalcfile, "<algebraList>\n");
        AppendTo(uacalcfile, "<algebra>\n<basicAlgebra>\n<algName>", algebraname, "</algName>\n");
        AppendTo(uacalcfile, "<desc>The permutational algebra (", MovedPoints(G)-1, ", ", StructureDescription(G), ") (generated by WJDrabbit).</desc>\n");
        AppendTo(uacalcfile, "<cardinality>", N, "</cardinality>\n");
        AppendTo(uacalcfile, "<operations>\n");
    
        for i in [1..numgens] do
            g:=gens[i];
            AppendTo(uacalcfile, "<op>\n<opSymbol><opName>g", i, "</opName>\n");
            AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
            for j in [1..N] do
                x:=Bmp[j]^g;
                x:=Position(Bmp, x);
                AppendTo(uacalcfile, x-1, "," );
            od;
            AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
        od;
        AppendTo(uacalcfile, "</operations>\n</basicAlgebra>\n</algebra>\n\n");
    fi;
    
    # Now write the general rabbit ears algebra
    AppendTo(uacalcfile, "<algebra>\n<basicAlgebra>\n<algName>WJDrabbit-", algebraname,"</algName>\n");
    AppendTo(uacalcfile, "<desc>WJD rabbit on ", algebraname, " using points a=", a-1, ", b=", b-1,".</desc>\n");
    AppendTo(uacalcfile, "<cardinality>", sizeA, "</cardinality>\n");
    AppendTo(uacalcfile, "<operations>\n");
    ## p0 ##
    writeUACalcOp(uacalcfile, p0, "p0");
    ## p[k] ## 
    for k in [1..K+1] do
        opname:=Concatenation("p",String(k));
        writeUACalcOp(uacalcfile, p[k], opname);
    od;    
    # r #
    writeUACalcOp(uacalcfile, r, "r");
    
    # gip0
    for i in [1..numgens] do
        opname:=Concatenation("g",String(i),"p0");
        writeUACalcOp(uacalcfile, gp0[i], opname);
    od;
    
    ### qij = sij pi
    for i in [0..K+1] do
        for j in [0..K+1] do
            opname:=Concatenation("q_",String(i),",", String(j));
            writeUACalcOp(uacalcfile, q[i+1][j+1], opname);
        od;
    od;
            
    AppendTo(uacalcfile, "</operations>\n</basicAlgebra>\n</algebra>\n");

    if STORE_GSET then
        AppendTo(uacalcfile, "</algebraList>\n");
    fi;
end;    
