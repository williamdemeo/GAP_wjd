function atoms=findMnInGroup(G, n, ms, atoms);
    numatoms := Size(atoms);
    numms := Size(ms);
    if numatoms=n then
        return;
    fi;
    
    # If numatoms=k, then we are looking for the (k+1)st atom out of n atoms
    # We only have to search at most up to numms-(n-k), so 
    # (k+1)st         (k+2)nd                k+(n-k)th
    # numms-(n-k), numms-(n-k-1), ..., numms-(n-k-(n-k)+1), 
    if numatoms>0,
       first=atoms(numatoms)+1;
    else, 
      atoms
      first=1;
    end;
    last=numms-(n-numatoms);
    
    for k in [first..last] do
        atoms := [atoms, k];
        resp:=1;
        for j=1:numatoms,
          if  Intersection(ms[atoms[j]],ms[k])meet(Mn0(j),k)~=bot),
      resp=0;
    end;
  end;
  if resp,
    Mn = findMn(Mn1, Mn, X, n, idemcnt, join, meet);
  end;
end;
    

    