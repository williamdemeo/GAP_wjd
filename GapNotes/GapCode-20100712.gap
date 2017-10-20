for G in list of all small order groups,
  
  intG := IntermediateSubgroups(G, Group(()));
rec( subgroups := [ Group([ (1,2)(3,4) ]), Group([ (1,3)(2,4) ]), Group([ (1,4)(2,3) ]), 
      Group([ (2,4,3) ]), Group([ (1,3,4) ]), Group([ (1,4,2) ]), Group([ (1,2,3) ]), 
      Group([ (1,3)(2,4), (1,2)(3,4) ]) ], 
  inclusions := [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 0, 4 ], [ 0, 5 ], [ 0, 6 ], [ 0, 7 ], 
      [ 1, 8 ], [ 2, 8 ], [ 3, 8 ], [ 4, 9 ], [ 5, 9 ], [ 6, 9 ], [ 7, 9 ], [ 8, 9 ] ] )
gap> IntermediateSubgroups(intA4.subgroups[8], Group(()));
rec( subgroups := [ Group([ (1,2)(3,4) ]), Group([ (1,3)(2,4) ]), Group([ (1,4)(2,3) ]) ], 
  inclusions := [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 4 ], [ 2, 4 ], [ 3, 4 ] ] )
gap> Size(intA4.subgroups);
8
gap> intA4.inclusions;
[ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 0, 4 ], [ 0, 5 ], [ 0, 6 ], [ 0, 7 ], [ 1, 8 ], 
  [ 2, 8 ], [ 3, 8 ], [ 4, 9 ], [ 5, 9 ], [ 6, 9 ], [ 7, 9 ], [ 8, 9 ] ]
gap> intA4.inclusions[1];
[ 0, 1 ]
gap> intA4.inclusions[1][2];
1
gap> List(intA4.inclusions, x -> intA4.inclusions[x][2]=9);
List Element: <position> must be a positive integer (not a list (plain,cyc)) at
return intA4.inclusions[x][2] = 9;
 called from
func( elm ) called from
<function>( <arguments> ) called from read-eval-loop
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can replace <position> via 'return <position>;' to continue
brk> quit;
gap> intA4.inclusions[1][1];
0
gap> intA4.inclusions[2][1];
0
gap> intA4.inclusions[2][2];
2
gap> PositionFirstComponent(intA4.inclusions, 9);
16
gap> Size(intA4.inclusions);
15
gap> List(intA4.inclusions, x -> x[][2]=9);
Syntax error: expression expected
List(intA4.inclusions, x -> x[][2]=9);
                              ^
gap> List(intA4.inclusions, x -> x[i][2]=9);
Syntax error: warning: unbound global variable
List(intA4.inclusions, x -> x[i][2]=9);
                               ^
Variable: 'i' must have an assigned value at
return x[i][2] = 9;
 called from
func( elm ) called from
<function>( <arguments> ) called from read-eval-loop
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' after assigning a value to continue
brk> quit;
gap> List(intA4.inclusions, x -> x[..][2]=9);
Syntax error: expression expected
List(intA4.inclusions, x -> x[..][2]=9);
                               ^
gap> List(intA4.inclusions, x -> x[2]=9);
[ false, false, false, false, false, false, false, false, false, false, true, true, true, 
  true, true ]
gap> 