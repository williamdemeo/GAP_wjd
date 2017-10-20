# This needs a major overhaul.  It can be done much simpler.
# We'll start fresh and, even though we're version controlling,
# I'm going to put the old stuff in old_eight_queens.g, and start 
# fresh with with EightQueens.g
  
  
  respects:=function(positions, k, N)
      local p, pi, pj, ki, kj;
      for p in positions do
          pi:=p[1]; pj:=p[2];
          k:=index_to_pair(k, N);
          ki:=k[1]; kj:=k[2];
          if (  ( pi=ki ) or ( pj = kj ) or ( AbsInt(pi-ki)=AbsInt(pj-kj) )  ) then
              return false;
          fi;
      od;
      return true;
          
    
  find_solution:=function(N)
      local k, positions;
      
      for k in [1..N] do
          positions := [];
          positions[1]:= index_to_pair(k,N);
          positions := find_positions(positions, N);
          if Length(positions=N) then
              Print("\nSuccess: ", positions);
              return positions;
          fi;
      od;
  end;

  eight_queens:=function(N)
      local j,k,n,solved,place,positions;
      solved:=false;
      positions:=[];
      positions:=find_solution(positions,N);
      Print("\nSolution: ", positions);
  end;

  find_positions:=function(positions, N)
      local k;
      
      if Length(positions)=N then
          return positions;
      fi;
      for k in [1..N] do
          if respects(positions, k, N) then
              Add(positions, index_to_pair(k,N));
              return find_positions(positions,N);
          fi;
      od;
      
  end;
  
            
# For inputs [i,j], M, return i*M+j
pair_to_index:=function(pair,M)
    return (pair[1]-1)*M + pair[2];
end;

# For inputs k and M, this function return [i,j], 
# where k==i*M+j
index_to_pair:=function(k,M)
    local i, j;
    if not (IsInt(k) and IsInt(M) and k>-1 and M>0) then
        Error("Arguments must be non-negative integers.");
    fi;
    i:=Int(k/M)+1;
    j:=RemInt(k,M);
    return [i, j];
end;



find_place:=function(board,last_place)
    local i, j, i_start, j_start, k,N,M,temp;
    N:=Length(board);
    M:=Length(board); # assume square board for now
    temp:=index_to_pair(last_place,M);
    if temp[2]=M then
        i_start:=temp[1]+1;
        j_start:=1;
    else
        i_start:=temp[1];
        j_start:=temp[2]+1;
    fi;
    for i in [i_start..N] do
        for j in [j_start..M] do
            if board[i][j]=1 then
                return [i,j];
            fi;
        od;
    od;
    return false;
end;


    

    