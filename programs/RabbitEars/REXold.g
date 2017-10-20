# File: RabbitEarsExperimental.g
# Author: William DeMeo
# Date: 2011.10.17
# Updated: 2011.10.17
#
# Description: The functions here build on those in RabbitEars.g and WJDrabbit.g.
# They are experimental and are an attempt to find more general constructions.
#
# Send questions, comments, suggestions to williamdemeo@gmail.com
#

writeUACalcOp:=function(uacalcfile, op, opname)
    local N, x;
    N:=Length(op);    
    AppendTo(uacalcfile, "<op>\n<opSymbol><opName>", opname, "</opName>\n");
    AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
    AppendTo(uacalcfile,op[1]-1);
    for x in [2..N] do
        AppendTo(uacalcfile, ",", op[x]-1);
    od;
    AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
end;



REX:=function(args)
    # REX:=function([G, [b1, b2,...], algebraname, EXTRAOPS])
    #
    # This function takes a transitive permutation group G acting on the set of moved points B0
    # and, for each bk in [b1, b2, ...], constructs a set BB[k], which has the single point 
    # bk in common with B0.  Then operations on the union A = B0 \cup BB[1] \cup BB[2] \cup ...
    # are defined to create an algebra on A, which is stored in a uacalc file named 
    # MF-algebraname-b1-b2-....ua.  Also, the original G-set algebra is stored in the same file
    # and called algebraname. (This can be turned off by setting the variable STORE_GSET:=false below.)
    #
    # Input   G              a transitive group on the set of moved points B0 = {1, 2, ..., N}
    #         [b1, b2, ...]  "tie-points" -- distinct points among the moved points of G;  bk = B0 \cap BB[k]
    #         algebraname    (optional, default=StructureDescription(G)) a string, used to name the uacalc algebra.
    #         EXTRAOPS       (optional, default=false) if true, add operations 
    #                        p_{g(k)} g p0 (x in BB[k]) for each g in setwise stabilizer of [b1, b2, ...].
    #
    # Output  MF-algebraname-b1-b2-....ua  A uacalc file which stores the original G-set algebra, called
    #                                      algebraname, as well as the MF-algebra <A, F> where A is the set 
    #                                      A = B0 \cup BB[1] \cup BB[2] \cup ... where 
    #                                            |B0| = |BB[1]| = |BB[2]| = ...,
    #                                            B0\cap BB[1] = {b1}, B0\cap BB[2] = {b2}, ...
    #                                            BB[i]\cap BB[j] = { }, unless i=j
    #                                      F is the set of maps:
    #                                            p0[k] maps A onto BB[k]
    #                                            s maps BB[k] onto bk and is the identity on B0
    #                                                      { g(c),  if c in B0
    #                                            gbar(c) = { (p1 g p0)(c), if c in B1
    #                                                      { (p2 g p0)(c), if c in B2
    #    
    #
    # Author: williamdemeo@gmail.com
    # Date: 2011.05.26
    # Updated: 2011.06.04
    
    local B0, BB, p0, s, q0, q1, gn, gensB, gensA, nargin, G, pathname, filename, outfile, N, opcount, g, k, z, x, pos, i, j, flag, opname,
          b, axes, naxes, axstring, aboveax, VERBOSE, sizeA,algebraname, newops, genprod, uacalcpath, uacalcfile, STORE_GSET, e, numalgebras;
    
    ### Variables you can change to your liking:
    #
    uacalcpath := "/tmp/REX/"; # <<< ATTENTION! This is where uacalc file is stored.
    VERBOSE:=true;         # Set this to false to supress extra command-line output.
    STORE_GSET:=true;      # Set this to false if you don't want the original G-set also stored in the uacalc file.
    #
    ###
    
    nargin := Length(args);
    if VERBOSE then
        Print("REX called with the following arguments: \n");
        for k in [1..nargin] do
            Print("args[",k,"] = ", args[k], "\n");
        od;
    fi;
    if nargin < 1 then 
        Error("Usage: REX([G, [b1, b2, ...], ...]);");
    else
        G:=args[1]; 
    fi;
    
    if nargin < 3 then algebraname:=StructureDescription(G); else algebraname:=args[3]; fi;
    if nargin < 2 then Error("Usage: REX([G, [b1, b2, ...], ...);"); else axes:=args[2]; fi;
    
    naxes:=Length(axes);
    if not IsTransitive(G) then
        Error("Usage: REX([G, [b1, b2, ...], ...);  G must be a transitive group.");
    fi;
    
    
    axstring:=Concatenation("REX-", algebraname);
    for k in [1..naxes] do
        axstring:= Concatenation(axstring, "-", String(axes[k]-1));
    od;
    filename := Concatenation(uacalcpath, axstring, ".ua");

    Print("uacalc file: ", filename, "\n");
    uacalcfile := OutputTextFile(filename, false);
    SetPrintFormattingStatus(uacalcfile, false);   # prevents automatic indentation and line breaks.

    N:=NrMovedPoints(G);
    
    if VERBOSE then
        Print("axes = ", axes, "\n");
    fi;
    
    sizeA:= N+naxes*2*(N-1);
    B0:=[1..N];
    BB:=[];
    p0:=[];
    aboveax:=[];
    for k in [1..naxes] do
        Add(BB, [1..N]);
        Add(BB, [1..N]);  # Now trying three sets intersecting at each tie-point (instead of two).
        Add(aboveax, 0);
        Add(p0, ());
        Add(p0, ());
    od;
    for b in B0 do
        for k in [1..naxes] do
            BB[k][b]:=b+(k*N)-(k-1)-aboveax[k];
            BB[naxes+k][b]:=naxes*(N-1) + b+(k*N)-(k-1)-aboveax[k];
        od;
        if b in axes then
            pos:=Position(axes, b);
            aboveax[pos]:=1;
            BB[pos][b]:=b;
            BB[naxes+pos][b]:=b;
        fi;
    od;
    if VERBOSE then
        Print("B0 = ", B0-0, "\n");
        for k in [1..naxes] do
            Print("B", k, " = ", BB[k], "\n");
        od;
        for k in [naxes+1..2*naxes] do
            Print("B", k, " = ", BB[k], "\n");
        od;
    fi;
    
    ### Construct the p0i's
    # Note: p0[k] maps B0 bijectively onto BB[k].
    # p0[k] is a permutation; e.g. p0[1]=(b1,b1')(b2,b2')...(bn,bn')
    # so you can apply it to any element x of A as follows:
    #  x^p0[k] will leave x fixed if x is not in B0 or BB[k]
    #          otherwise it will map x to the corresponding element of B0 or BB[k] 
    for b in B0 do
        for k in [1..naxes] do
            if b in axes then
                pos:=Position(axes, b);
                if k<>pos then
                    p0[k]:=p0[k]*(b,BB[k][b]); 
                    p0[naxes+k]:=p0[naxes+k]*(b,BB[naxes+k][b]); 
                fi;
            else
                p0[k]:=p0[k]*(b,BB[k][b]); 
                p0[naxes+k]:=p0[naxes+k]*(b,BB[naxes+k][b]); 
            fi;
        od;
    od;        
    if VERBOSE then
        for k in [1..naxes] do
            Print("p0[", k, "] = ", p0[k], "\n");
        od;
        for k in [naxes+1..2*naxes] do
            Print("p0[", k, "] = ", p0[k], "\n");
        od;
    fi;
    
    ### Construct s  (maps BB[k] onto the kth axis, leaves B0 fixed)
    s:=[1..sizeA];
    for z in [1..sizeA] do
        for k in [1..naxes] do
            if (z in BB[k]) or (z in BB[naxes+k]) then
                s[z]:=axes[k]; 
                break;
            fi;
        od;
    od;
    if VERBOSE then Print("s = ", s, "\n");  fi;
    
    ### Construct q0[k]  (leaves B0 and BB[k] fixed, maps BB[naxes+k] onto BB[k], and all others to their tie-point)
    q0 := [];
    # First copy s into q0[k] for each k in [1..naxes]. (There must be an easier way!)
    for k in [1..naxes] do
        q0[k]:=[1..sizeA];
        for z in [1..sizeA] do
            q0[k][z]:=s[z];
        od;
    od;
    for k in [1..naxes] do
        for b in B0 do
            #q0[k][b]:=axes[k];
            q0[k][b^p0[k]]:=b^p0[k]; # identity on BB[k]
            q0[k][b^p0[naxes+k]]:=b^p0[k];
        od;
    od;
    if VERBOSE then
        for k in [1..naxes] do  Print("q0[", k, "] = ", q0[k], "\n");   od;
    fi;
    
    ### Construct q1[k]  (leaves B0 and BB[naxes+k] fixed, maps BB[k] onto BB[naxes+k], and all others to their tie-point)
    q1:= [];
    # First copy s into q0[k] for each k in [1..naxes]. (There must be an easier way!)
    for k in [1..naxes] do
        q1[k]:=[1..sizeA];
        for z in [1..sizeA] do
            q1[k][z]:=s[z];
        od;
    od;
    for k in [1..naxes] do
        for b in B0 do
            # q1[k][b^p0[naxes+k]]:=b^p0[naxes+k]; # identity on BB[naxes+k]
            # q1[k][b]:=axes[k]; # identity on B0
            q1[k][b^p0[naxes+k]]:=b^p0[k];
            q1[k][b^p0[k]]:=b^p0[naxes+k];
        od;
    od;
    if VERBOSE then
        for k in [1..naxes] do
            Print("q1[", k, "] = ", q1[k], "\n");
        od;
    fi;
    
    
    # now write the uacalc file
    PrintTo(uacalcfile, "<?xml version=\"1.0\"?>\n");
            
    if STORE_GSET then   # there will be multiple algebras in the resulting uacalc file
        AppendTo(uacalcfile, "<algebraList>\n");
    fi;
    
    ### First put the original G-set algebra in the uacalc file 
    if STORE_GSET then
        AppendTo(uacalcfile, "<algebra>\n<basicAlgebra>\n<algName>", algebraname, "</algName>\n");
        AppendTo(uacalcfile, "<desc>The permutational algebra (", MovedPoints(G)-1, ", ", StructureDescription(G), ") (generated by Manifoil).</desc>\n");
        AppendTo(uacalcfile, "<cardinality>", N, "</cardinality>\n");
        AppendTo(uacalcfile, "<operations>\n");
        opcount:=0;
        
        for g in GeneratorsOfGroup(G) do
            AppendTo(uacalcfile, "<op>\n<opSymbol><opName>g", opcount, "</opName>\n");
            AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
            AppendTo(uacalcfile, 1^g-1);
            for x in [2..N] do
                AppendTo(uacalcfile, ",", x^g-1);
            od;
            AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
            opcount:=opcount+1;
        od;
        AppendTo(uacalcfile, "</operations>\n</basicAlgebra>\n</algebra>\n\n");
    fi;
    
    AppendTo(uacalcfile, "<algebra>\n<basicAlgebra>\n<algName>", axstring,"</algName>\n");
    AppendTo(uacalcfile, "<desc>Rabbit-ears on ", algebraname, " using points ", axes-1, ".</desc>\n");
    
    AppendTo(uacalcfile, "<cardinality>", sizeA, "</cardinality>\n");
    AppendTo(uacalcfile, "<operations>\n");
    
    ## p0 ##
    AppendTo(uacalcfile, "<op>\n<opSymbol><opName>p0</opName>\n");
    AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
    for z in [1..sizeA] do
        if z in B0 then
            AppendTo(uacalcfile, z-1, ",");  #  (this leaves extra comma in op definition -- hope that's ok)
        else
            for k in [1..2*naxes] do
                if z in BB[k] then
                    AppendTo(uacalcfile, (z^p0[k])-1, ",");
                    break;
                fi;
            od;
        fi;
    od;
    AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
    
    ## p0[k] ## 
    # Note carefully what we're doing here.  We're not simply writing the p0 as defined above
    # to the uacalc file.  Rather, we're taking any b not in B0 or BB[k] and mapping it first to
    # B0, then mapping it from B0 to BB[k].  So the resulting map "pk" maps all of A onto BB[k].
    for k in [1..2*naxes] do
        AppendTo(uacalcfile, "<op>\n<opSymbol><opName>p", k, "</opName>\n");
        AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
        for z in [1..sizeA] do
            if z in B0 then
                AppendTo(uacalcfile, z^p0[k]-1, ",");
            else
                for j in [1..2*naxes] do
                    if z in BB[j] then
                        if j=k then
                            AppendTo(uacalcfile, z-1, ",");
                        else
                            AppendTo(uacalcfile, (z^p0[j])^p0[k]-1, ",");
                        fi;
                        break;
                    fi;
                od;
            fi;
        od;
        AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
    od;
    
    AppendTo(uacalcfile, "<op>\n<opSymbol><opName>s</opName>\n");
    AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
    AppendTo(uacalcfile, s[1]-1);
    for z in [2..sizeA] do AppendTo(uacalcfile, ",", s[z]-1); od;
    AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
    
    for k in [1..naxes] do
        opname:=Concatenation("q0",String(k));
        writeUACalcOp(uacalcfile, q0[k], opname);
    od;    
    for k in [1..naxes] do
        opname:=Concatenation("q1",String(k));
        writeUACalcOp(uacalcfile, q1[k], opname);
    od;    
    
    opcount:=0;
    # now construct the operations g p_0, one for each generator g of G.
    for g in GeneratorsOfGroup(G) do
        AppendTo(uacalcfile, "<op>\n<opSymbol><opName>g", opcount, "</opName>\n");
        AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
        for z in [1..sizeA] do
            if z in B0 then
                AppendTo(uacalcfile, z^g-1,",");
            else
                for k in [1..2*naxes] do
                    if z in BB[k] then
                        AppendTo(uacalcfile,(z^p0[k])^g-1, ",");
                        break;
                    fi;
                od;
            fi;
        od;
        AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
        opcount:=opcount+1;
    od;
    
    AppendTo(uacalcfile, "</operations>\n</basicAlgebra>\n</algebra>\n");

    if STORE_GSET then
        AppendTo(uacalcfile, "</algebraList>\n");
    fi;

end;
