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


get_new_board:=function(N)
    local j,k, board;
    board:=[];
    for j in [1..N] do
        Add(board, [1]);
        for k in [1..N] do
            Add(board[j], 1);
        od;
    od;
    return board;
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

put_queen:=function(positions, board, place)
    local i, j, k, l, N;
    N:=Length(board);
    i:=place[1];
    j:=place[2];
    for k in [1..N] do
        if ([i,k] in positions) or ([k,j] in positions) then
            return false;
        fi;
        board[i][k]:=0; board[k][j]:=0;
        if (i+k < 9) then
            if (j+k < 9) then
                if ([i+k,j+k] in positions) then 
                    return false;
                fi;
                board[i+k][j+k]:=0;
            fi;
            if (j-k > 0) then
                if ([i+k,j-k] in positions) then 
                    return false;
                fi;
                board[i+k][j-k]:=0;
            fi;
        fi;
        if (i-k > 9) then
            if (j+k < 9) then
                if ([i-k,j+k] in positions) then 
                    return false;
                fi;
                board[i-k][j+k]:=0;
            fi;
            if (j-k > 0) then
                if ([i-k,j-k] in positions) then 
                    return false;
                fi;
                board[i-k][j-k]:=0;
            fi;
        fi;
    od;
    return board;
end;

    

eight_queens:=function(N)
    local board,j,k,n,solved,place,positions, last_place, next_place;
    solved:=false;
    positions:=[];
    board:=get_new_board(N);
    Print("\nboard = ", board);
    last_place:=0;
    positions:=find_solution(positions,board,last_place);
    Print("\nSolution: ", positions);
    
end;

    

find_solution:=function(positions,board,last_place)
    local N, k, trial_place, trial_board, trial_positions, new_positions;
    N:=Length(board);
    if Length(positions)=8 then
        return positions;
    fi;
    for k in [last_place..N*N] do
        trial_place:=find_place(board,k);
        Print("\nk = ", k);
        Print("\nboard = ", board);
        Print("\ntrial_place = ", trial_place);
        Print("\npositions = ", positions);
        
        if trial_place=false then
            return false;   # there is no place for the next queen
        fi;
        last_place:=pair_to_index(trial_place,N);
        trial_board:=put_queen(positions,board,trial_place);
        if trial_board=false then
        else
            trial_positions:=ShallowCopy(positions);
            Add(trial_positions, trial_place);
            new_positions:=find_solution(trial_positions,trial_board, last_place);
            if new_positions=false then
            else
                return new_positions;
            fi;
        fi;
        
    od;
end;
