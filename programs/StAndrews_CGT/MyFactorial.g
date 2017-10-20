MyFactorial:=function(a)
    local k, answer;
    if a<0 then
        Error("input must be a positive integer");
    fi;
    answer:=a;
    for k in [1..a-1] do
        answer:= answer*(a-k);
    od;
    return answer;
end;

Test_MyFactorial:=function()
    local a,b,c,k;
    for k in [1..10] do
        Print("Test ", k, ": MyFactorial(",k,") == Factorial(",k,")");
        if MyFactorial(k)=Factorial(k) then
            Print("  ...test passed\n");
        else
            Print("  ...TEST FAILED\n");
        fi;
    od;
end;

       
