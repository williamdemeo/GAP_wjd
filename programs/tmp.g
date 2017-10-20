
# construct the p0i's 
    Concatenation(B0{[1..b1-1]},B0{[b1+1..9]});

    
    AppendTo(outfile, "\nQAops=[");
    
    AppendTo(uacalcfile, "<?xml version=\"1.0\"?>\n");
    AppendTo(uacalcfile, "<algebra>\n<basicAlgebra>\n<algName>QA-", algebraname, "</algName>\n");
    AppendTo(uacalcfile, "<cardinality>", sizeA, "</cardinality>\n");
    AppendTo(uacalcfile, "<operations>\n");
    opcount:=0;
    for g in GeneratorsOfGroup(G) do
        #    for g in Elements(G) do
        AppendTo(uacalcfile, "<op>\n<opSymbol><opName>g", opcount, "</opName>\n");
        AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
        AppendTo(uacalcfile, 1^g-1);
        AppendTo(outfile, 1^g-1);
        for z in [2..sizeA] do
            if z in B0 then
                AppendTo(uacalcfile, ",", z^g-1);
                AppendTo(outfile, " ", z^g-1);
            elif z in B1 then
                AppendTo(uacalcfile, ",", p1[p0[z]^g]-1);
                AppendTo(outfile, " ", p1[p0[z]^g]-1);
            elif z in B2 then
                AppendTo(uacalcfile, ",", p2[p0[z]^g]-1);
                AppendTo(outfile, " ", p2[p0[z]^g]-1);
            fi;
        od;
        AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
        AppendTo(outfile, ";\n");
        AppendTo(uacalcfile, "<op>\n<opSymbol><opName>f", opcount, "</opName>\n");
        AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
        AppendTo(uacalcfile, 0);
        AppendTo(outfile, 0);
        for z in [2..sizeA] do
            if z in B0 then
                AppendTo(uacalcfile, ",", z-1);
                AppendTo(outfile, " ", z-1);
            elif z in B1 then
                AppendTo(uacalcfile, ",", p1[p0[z]^g]-1);
                AppendTo(outfile, " ", p1[p0[z]^g]-1);
            elif z in B2 then
                AppendTo(uacalcfile, ",", p2[p0[z]^g]-1);
                AppendTo(outfile, " ", p2[p0[z]^g]-1);
            fi;
        od;
        AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
        AppendTo(outfile, ";\n");
        opcount:=opcount+1;
    od;
    s:=[1..sizeA];
    for k in B1 do s[k]:=b1; od;
    for k in B2 do s[k]:=b2; od;
    AppendTo(uacalcfile, "<op>\n<opSymbol><opName>s</opName>\n");
    AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
    AppendTo(uacalcfile, s[1]-1);
    for k in [2..sizeA] do AppendTo(uacalcfile, ",", s[k]-1); od;
    AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
    
    AppendTo(uacalcfile, "<op>\n<opSymbol><opName>p0</opName>\n");
    AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
    AppendTo(uacalcfile, p0[1]-1);
    for k in [2..sizeA] do AppendTo(uacalcfile, ",", p0[k]-1); od;
    AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
    
    AppendTo(uacalcfile, "<op>\n<opSymbol><opName>p1</opName>\n");
    AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
    AppendTo(uacalcfile, p1[1]-1);
    for k in [2..sizeA] do AppendTo(uacalcfile, ",", p1[k]-1); od;
    AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");
    
    AppendTo(uacalcfile, "<op>\n<opSymbol><opName>p2</opName>\n");
    AppendTo(uacalcfile, "<arity>1</arity>\n</opSymbol>\n<opTable>\n<intArray>\n<row>");
    AppendTo(uacalcfile, p2[1]-1);
    for k in [2..sizeA] do AppendTo(uacalcfile, ",", p2[k]-1); od;
    AppendTo(uacalcfile, "</row>\n</intArray>\n</opTable>\n</op>\n");

    AppendTo(uacalcfile, "</operations>\n</basicAlgebra>\n</algebra>\n");
end;
    