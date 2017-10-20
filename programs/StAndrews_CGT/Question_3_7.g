FindGroup:=function(n1,n2)
    local n, g, els, as, bs, a, b;
    
    for n in [n1..n2] do
        for g in AllSmallGroups(n) do
            if (not IsAbelian(g)) and Size(Center(g))=1 then
                els:=Elements(g);
                as:=Filtered(els, x->Order(x)=2);
                bs:=Filtered(els, x->Order(x)=3);
                for a in as do
                    for b in bs do
                        if Order(a*b)=5 then
                            return g;
                        fi;
                    od;
                od;
            fi;
        od;
    od;
    return fail;
end;
