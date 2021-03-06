gap> G := SmallGroup(960,11357);;
gap> L := GraphicSubgroupLattice(G);
<graphic subgroup lattice "GraphicSubgroupLattice of [ 960, 11357 ]">
gap> ms := MaximalSubgroups(G);
[ Group([ (1,2,12)(3,13,16)(4,11,6)(5,8,9)(7,14,10), 
      (2,3)(4,6)(5,12)(7,11)(8,13)(15,16) ]), 
  Group([ (1,2,12)(3,5,10)(4,14,8)(6,9,13)(7,11,16), 
      (2,4)(3,10)(5,9)(8,15)(11,12)(14,16) ]), 
  Group([ (1,2,12)(3,11,8)(4,13,10)(5,6,7)(9,14,16), 
      (2,7)(3,14)(5,10)(6,15)(9,16)(12,13) ]), 
  Group([ (1,2,12)(3,14,6)(4,5,16)(7,13,8)(9,11,10), 
      (2,9)(4,13)(6,11)(7,8)(10,15)(12,14) ]), 
  Group([ (1,3,5)(2,12,10)(4,9,8)(6,14,13)(7,15,11), 
      (2,10)(3,6)(5,7)(9,12)(13,16)(14,15) ]), 
  Group([ (1,3,5)(2,14,4)(6,12,15)(7,10,9)(8,13,11), 
      (3,9)(4,7)(5,14)(6,8)(10,16)(11,13) ]), 
  Group([ (1,3,5)(2,7,13)(4,11,12)(6,8,10)(9,14,15), 
      (2,14)(3,11)(4,16)(5,8)(9,15)(10,12) ]), 
  Group([ (1,4,11)(2,13,3)(5,16,14)(6,7,9)(10,12,15), 
      (3,9)(4,7)(5,14)(6,8)(10,16)(11,13) ]), 
  Group([ (1,4,11)(2,12,6)(3,7,16)(5,9,15)(10,13,14), 
      (2,6)(4,10)(7,12)(8,14)(9,11)(13,15) ]), 
  Group([ (1,6,7)(2,11,15)(3,5,4)(8,14,10)(9,16,12), 
      (3,4)(5,11)(6,10)(7,9)(8,16)(13,14) ]), 
  Group([ (1,15,6)(2,3,13)(4,9,16)(5,10,11)(7,12,14), 
      (1,6)(3,10)(5,8)(7,13)(9,15)(11,12) ]), 
  Group([ (1,7,5)(2,3,13)(4,14,15)(6,10,16)(9,11,12), 
      (1,11)(3,14)(4,8)(6,15)(9,12)(13,16) ]), 
  Group([ (1,15,10)(2,4,14)(3,7,8)(5,11,6)(9,12,13), 
      (1,10)(4,6)(5,12)(7,15)(9,14)(11,16) ]), 
  Group([ (1,3,12)(2,5,10)(4,14,13)(6,9,8)(11,15,16), 
      (1,13)(3,12)(5,9)(6,7)(8,15)(10,11) ]), 
  Group([ (1,10,11)(2,16,13)(3,4,9)(5,15,6)(8,14,12), 
      (1,10)(4,6)(5,12)(7,15)(9,14)(11,16) ]), 
  Group([ (1,8,5)(2,6,14)(3,4,9)(10,13,12)(11,15,16), 
      (2,6)(4,10)(7,12)(8,14)(9,11)(13,15) ]), 
  Group([ (1,2,10)(3,6,4)(5,9,15)(7,14,12)(11,13,16), 
      (2,3)(4,6)(5,12)(7,11)(8,13)(15,16) ]), 
  Group([ (1,2,8)(3,11,12)(4,15,13)(5,6,14)(7,16,9), 
      (2,7)(3,14)(5,10)(6,15)(9,16)(12,13) ]), 
  Group([ (1,3,15)(2,16,14)(5,6,12)(7,10,8)(9,13,11), 
      (3,9)(4,7)(5,14)(6,8)(10,16)(11,13) ]), 
  Group([ (1,4,14)(2,9,11)(3,13,12)(5,15,7)(8,16,10), 
      (2,13)(3,8)(4,5)(6,12)(7,15)(11,16) ]), 
  Group([ (1,5,8)(2,14,6)(3,9,4)(10,12,13)(11,16,15), 
      (2,7)(3,14)(5,10)(6,15)(9,16)(12,13) ]), 
  Group([ (1,6,16)(3,13,8)(4,15,9)(5,7,10)(11,14,12), 
      (2,9)(4,13)(6,11)(7,8)(10,15)(12,14) ]), 
  Group([ (1,8,11)(2,3,12)(5,14,9)(6,16,7)(10,15,13), 
      (3,9)(4,7)(5,14)(6,8)(10,16)(11,13) ]), 
  Group([ (1,16,5)(2,4,12)(6,15,14)(7,11,13)(8,9,10), 
      (3,9)(4,7)(5,14)(6,8)(10,16)(11,13) ]), 
  Group([ (1,10,9)(2,5,15)(3,4,11)(6,16,13)(7,8,12), 
      (3,7)(4,9)(5,13)(6,16)(8,10)(11,14) ]), 
  Group([ (2,8,10)(3,16,5)(4,9,12)(6,7,13)(11,14,15), 
      (1,4)(3,6)(8,11)(9,13)(12,16)(14,15) ]), 
  Group([ (2,5,11)(3,4,15)(6,7,13)(8,12,16)(9,10,14), 
      (1,11)(2,7)(4,8)(5,10)(9,13)(12,16) ]), 
  Group([ (1,12,15)(3,5,6)(4,14,16)(7,11,8)(9,13,10), 
      (1,4)(2,10)(5,7)(8,11)(9,16)(12,13) ]), 
  Group([ (1,8,15)(2,11,9)(3,7,10)(4,5,12)(13,16,14), 
      (1,6)(2,4)(5,15)(7,13)(8,9)(14,16) ]), 
  Group([ (1,2,12)(3,14,6)(4,5,16)(7,13,8)(9,11,10), 
      (1,13)(3,12)(5,9)(6,7)(8,15)(10,11) ]), 
  Group([ (1,15,16)(2,7,5)(3,12,11)(4,6,9)(8,14,13), 
      (1,12)(2,15)(5,11)(6,8)(10,16)(13,14) ]), 
  Group([ (1,5,16)(2,8,13)(4,11,14)(6,7,10)(9,12,15), 
      (1,2)(3,4)(5,14)(7,9)(11,13)(12,15) ]), 
  Group([ (1,2,12)(3,14,6)(4,5,16)(7,13,8)(9,11,10), 
      (2,3)(4,6)(5,12)(7,11)(8,13)(15,16) ]), 
  Group([ (1,2,12)(3,11,8)(4,13,10)(5,6,7)(9,14,16), 
      (2,4)(3,10)(5,9)(8,15)(11,12)(14,16) ]), 
  Group([ (1,2,12)(3,5,10)(4,14,8)(6,9,13)(7,11,16), 
      (2,7)(3,14)(5,10)(6,15)(9,16)(12,13) ]), 
  Group([ (1,2,12)(3,13,16)(4,11,6)(5,8,9)(7,14,10), 
      (2,9)(4,13)(6,11)(7,8)(10,15)(12,14) ]), 
  Group([ (1,3,5)(2,7,13)(4,11,12)(6,8,10)(9,14,15), 
      (2,10)(3,6)(5,7)(9,12)(13,16)(14,15) ]), 
  Group([ (1,3,5)(2,8,15)(4,6,7)(9,12,13)(10,11,14), 
      (3,9)(4,7)(5,14)(6,8)(10,16)(11,13) ]), 
  Group([ (1,3,5)(2,12,10)(4,9,8)(6,14,13)(7,15,11), 
      (2,14)(3,11)(4,16)(5,8)(9,15)(10,12) ]), 
  Group([ (1,4,11)(2,16,15)(3,10,9)(5,13,6)(7,12,14), 
      (3,9)(4,7)(5,14)(6,8)(10,16)(11,13) ]), 
  Group([ (1,4,11)(2,9,14)(3,5,12)(6,10,16)(7,13,15), 
      (2,6)(4,10)(7,12)(8,14)(9,11)(13,15) ]), 
  Group([ (1,6,7)(2,12,5)(3,9,14)(4,10,15)(8,16,11), 
      (3,4)(5,11)(6,10)(7,9)(8,16)(13,14) ]), 
  Group([ (1,16,12)(2,3,13)(4,10,7)(5,9,15)(6,14,11), 
      (3,9)(4,7)(5,14)(6,8)(10,16)(11,13) ]), 
  Group([ (1,15,6)(2,3,13)(4,9,16)(5,10,11)(7,12,14), 
      (1,11)(3,14)(4,8)(6,15)(9,12)(13,16) ]), 
  Group([ (1,8,12)(2,4,14)(3,6,9)(5,10,13)(7,15,11), 
      (3,9)(4,7)(5,14)(6,8)(10,16)(11,13) ]), 
  Group([ (1,14,16)(2,5,10)(3,9,4)(6,12,11)(8,15,13), 
      (1,13)(3,12)(5,9)(6,7)(8,15)(10,11) ]), 
  Group([ (1,13,5)(2,4,9)(3,6,14)(7,11,16)(8,12,10), 
      (2,9)(4,13)(6,11)(7,8)(10,15)(12,14) ]), 
  Group([ (1,3,11)(2,7,14)(4,5,12)(8,16,10)(9,13,15), 
      (2,7)(3,14)(5,10)(6,15)(9,16)(12,13) ]), 
  Group([ (2,8,10)(3,16,5)(4,9,12)(6,7,13)(11,14,15), 
      (2,3)(4,6)(5,12)(7,11)(8,13)(15,16) ]), 
  Group([ (1,13,14)(3,4,12)(5,10,7)(6,11,9)(8,16,15), 
      (1,10)(4,6)(5,12)(7,15)(9,14)(11,16) ]), 
  Group([ (1,8,14)(2,6,5)(4,7,9)(10,11,12)(13,15,16), 
      (1,4)(2,10)(5,7)(8,11)(9,16)(12,13) ]), 
  Group([ (1,14,6)(2,5,8)(3,7,9)(10,15,13)(11,16,12), 
      (1,10)(2,3)(7,16)(8,13)(9,14)(11,15) ]), 
  Group([ (1,7,8)(2,9,16)(3,10,15)(4,6,12)(11,13,14), 
      (1,4)(3,6)(8,11)(9,13)(12,16)(14,15) ]), 
  Group([ (1,7,13)(2,12,8)(3,15,14)(4,10,9)(5,16,11), 
      (1,2)(3,4)(5,14)(7,9)(11,13)(12,15) ]), 
  Group([ (1,6,13)(2,15,3)(4,5,11)(8,12,14)(9,10,16), 
      (1,10)(2,13)(3,8)(4,12)(5,6)(9,14) ]), 
  Group([ (1,13,9)(2,5,4)(3,15,11)(6,16,10)(7,12,14), 
      (2,10)(3,6)(5,7)(9,12)(13,16)(14,15) ]), 
  Group([ (1,10,14)(2,7,12)(3,16,6)(4,13,11)(5,8,15), 
      (1,2)(5,13)(6,10)(8,16)(11,14)(12,15) ]), 
  Group([ (1,3,13)(2,7,5)(4,14,12)(6,16,8)(9,11,15), 
      (1,6)(2,4)(5,15)(7,13)(8,9)(14,16) ]), 
  Group([ (1,2,5)(3,12,10)(4,9,13)(6,14,8)(7,16,15), 
      (1,16)(3,5)(4,15)(7,8)(10,13)(12,14) ]), 
  Group([ (1,15,2)(3,11,10)(4,13,8)(5,16,7)(6,9,14), 
      (1,8)(2,7)(3,6)(4,11)(5,10)(14,15) ]), 
  Group([ (1,5,15)(2,3,8)(4,7,14)(6,11,10)(9,12,16), 
      (2,4)(3,10)(5,9)(8,15)(11,12)(14,16) ]), 
  Group([ (1,5,12)(2,16,4)(3,6,15)(7,9,11)(8,10,13), 
      (1,16)(2,9)(3,5)(4,10)(6,11)(13,15) ]), 
  Group([ (1,13,5)(2,4,9)(3,6,14)(7,11,16)(8,12,10), 
      (1,16)(2,11)(3,5)(6,9)(7,12)(8,14) ]), 
  Group([ (1,13,4)(2,5,9)(3,12,14)(6,10,8)(7,15,11), 
      (2,11)(4,15)(6,9)(7,14)(8,12)(10,13) ]), 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 96 with 6 generators>, 
  <permutation group of size 160 with 6 generators>, 
  <permutation group of size 160 with 6 generators>, 
  <permutation group of size 160 with 6 generators>, 
  <permutation group of size 160 with 6 generators>, 
  <permutation group of size 160 with 6 generators>, 
  <permutation group of size 160 with 6 generators>, 
  <permutation group of size 192 with 7 generators>, 
  <permutation group of size 192 with 7 generators>, 
  <permutation group of size 192 with 7 generators>, 
  <permutation group of size 192 with 7 generators>, 
  <permutation group of size 192 with 7 generators> ]
gap> msA4 := [ms[1], ms[17], ms[48], ms[57], ms[65]];
[ Group([ (1,2,12)(3,13,16)(4,11,6)(5,8,9)(7,14,10), 
      (2,3)(4,6)(5,12)(7,11)(8,13)(15,16) ]), 
  Group([ (1,2,10)(3,6,4)(5,9,15)(7,14,12)(11,13,16), 
      (2,3)(4,6)(5,12)(7,11)(8,13)(15,16) ]), 
  Group([ (1,3,11)(2,7,14)(4,5,12)(8,16,10)(9,13,15), 
      (2,7)(3,14)(5,10)(6,15)(9,16)(12,13) ]), 
  Group([ (1,10,14)(2,7,12)(3,16,6)(4,13,11)(5,8,15), 
      (1,2)(5,13)(6,10)(8,16)(11,14)(12,15) ]), 
  <permutation group of size 96 with 6 generators> ]
gap> for k in [1..5] do InsertVertex(L, msA4[k]); od;
gap> H := Intersection(ms[1], ms[17]);
Group([ (2,3)(4,6)(5,12)(7,11)(8,13)(15,16), (1,2)(5,13)(6,10)(8,16)(11,14)(12,
    15) ])
gap> InsertVertex(L, H);
[ <vertex of graphic graph, label: "7", Serial:20>, true ]
gap> V := msA4[5];
<permutation group of size 96 with 6 generators>
gap> vv := IntermediateSubgroups(V, H);
rec( 
  subgroups := [ Group([ (2,3)(4,6)(5,12)(7,11)(8,13)(15,16), (1,2)(5,13)(6,10
             )(8,16)(11,14)(12,15), (1,5)(2,11)(3,16)(4,10)(6,9)(7,8)(12,14)(13,
            15) ]), 
      Group([ (2,3)(4,6)(5,12)(7,11)(8,13)(15,16), (1,2)(5,13)(6,10)(8,16)(11,
            14)(12,15), (1,16)(2,6)(3,5)(4,13)(7,14)(8,12)(9,11)(10,15) ]), 
      Group([ (2,3)(4,6)(5,12)(7,11)(8,13)(15,16), 
          (1,2)(5,13)(6,10)(8,16)(11,14)(12,15), 
          (1,3)(2,9)(4,15)(5,16)(6,11)(7,12)(8,14)(10,13) ]) ], 
  inclusions := [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 4 ], [ 2, 4 ], [ 3, 4 ] ] )
gap> for k in [1..3] do InsertVertex(L, vv.subgroups[k]); od;
gap> minNormal := MinimalNormalSubgroups(G);
[ Group([ (1,2)(3,9)(4,7)(5,11)(6,16)(8,10)(12,15)(13,14), 
      (1,16)(2,6)(3,5)(4,13)(7,14)(8,12)(9,11)(10,15), 
      (1,5)(2,11)(3,16)(4,10)(6,9)(7,8)(12,14)(13,15), 
      (1,15)(2,12)(3,4)(5,13)(6,8)(7,9)(10,16)(11,14) ]) ]
gap> InsertVertex(L, minNormal[1]);
[ <vertex of graphic graph, label: "11", Serial:24>, true ]
gap> LogTo();
