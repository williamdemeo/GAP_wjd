gap> G := Group([(2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9)]);
Group([ (2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9) ])
gap> StructureDescription(G);
"(C3 x C3) : C2"
gap> H := Stabilizer(G, 1);
Group([ (2,3)(4,7)(5,9)(6,8) ])
gap> StructureDescription(H); 
"C2"
gap> L := GraphicSubgroupLattice(G);
Error, window system: Illegal Answer called from
WcOpenWindow( title, width, height ) called from
GraphicSheet( name, width, height ) called from
GraphicPoset( defaults.title, defaults.width, defaults.height ) called from
GraphicSubgroupLattice( G, rec(
     ) ) called from
<function>( <arguments> ) called from read-eval-loop
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' to continue
brk> a5+I0+I+InsertVertex(L, H);
Syntax error: warning: unbound global variable in *errin* line 1
a5+I0+I+InsertVertex(L, H);
  ^
Variable: 'a5' must have a value

Syntax error: warning: unbound global variable in *errin* line 1
a5+I0+I+InsertVertex(L, H);
     ^
Syntax error: warning: unbound global variable in *errin* line 1
a5+I0+I+InsertVertex(L, H);
       ^
Syntax error: warning: unbound global variable in *errin* line 1
a5+I0+I+InsertVertex(L, H);
                      ^
brk> quit;
gap> L := GraphicSubgroupLattice(G);
<graphic subgroup lattice "GraphicSubgroupLattice of [ 18, 4 ]">
gap> InsertVertex(L, H);
[ <vertex of graphic graph, label: "2", Serial:3>, true ]
gap> filterH := IntermediateSubgroups(G,H);;  
gap> for k in [1..Size(filterH.subgroups)] do
>     InsertVertex(L, filterH.subgroups[k]); 
> od;
gap> PointerButtonDown(1,398,453,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,196,254,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,294,255,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,400,252,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,611,250,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,408,251,1);
gap> PointerButtonDown(1,608,256,1);
gap> PointerButtonDown(1,298,248,1);
gap> PointerButtonDown(1,194,254,1);
gap> PointerButtonDown(1,323,256,1);
gap> PointerButtonDown(1,441,257,1);
gap> PointerButtonDown(1,338,260,1);
gap> PointerButtonDown(1,543,253,1);
gap> PointerButtonDown(1,432,254,1);
gap> PointerButtonDown(1,338,263,1);
gap> PointerButtonDown(1,236,253,1);
gap> PointerButtonDown(1,248,253,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,352,253,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,347,251,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,451,255,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,549,255,1);
gap> MenuSelected( 1, 1, 12 );
gap> PointerButtonDown(1,355,252,1);
gap> PointerButtonDown(1,247,253,1);
gap> PointerButtonDown(1,346,259,1);
gap> PointerButtonDown(1,446,256,1);
gap> MenuSelected( 1, 0, 1 );
gap> PointerButtonDown(1,495,262,1);
gap> MenuSelected( 1, 0, 1 );
gap> StructureDescription(filterH.subgroups[1]));
Syntax error: ; expected
StructureDescription(filterH.subgroups[1]));
                                          ^
gap> StructureDescription(filterH.subgroups[1]);
"S3"
gap> StructureDescription(filterH.subgroups[2]);
"S3"
gap> StructureDescription(filterH.subgroups[3]);
"S3"
gap> StructureDescription(filterH.subgroups[4]);
"S3"
gap> Elements(filterH.subgroups[4]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,5)(2,4)(3,6)(7,8), (1,5,9)(2,6,7)(3,4,8), 
  (1,9,5)(2,7,6)(3,8,4), (1,9)(2,8)(3,7)(4,6) ]
gap> Elements(filterH.subgroups[1]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,2)(4,8)(5,7)(6,9), (1,2,3)(4,5,6)(7,8,9), 
  (1,3,2)(4,6,5)(7,9,8), (1,3)(4,9)(5,8)(6,7) ]
gap> Elements(filterH.subgroups[2]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,4,7)(2,5,8)(3,6,9), (1,4)(2,6)(3,5)(8,9), 
  (1,7,4)(2,8,5)(3,9,6), (1,7)(2,9)(3,8)(5,6) ]
gap> Elements(filterH.subgroups[3]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,6,8)(2,4,9)(3,5,7), (1,6)(2,5)(3,4)(7,9), (1,8)(2,7)(3,9)(4,5),
  (1,8,6)(2,9,4)(3,7,5) ]
gap> Elements(filterH.subgroups[4]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,5)(2,4)(3,6)(7,8), (1,5,9)(2,6,7)(3,4,8), 
  (1,9,5)(2,7,6)(3,8,4), (1,9)(2,8)(3,7)(4,6) ]
gap> Elements(H);
[ (), (2,3)(4,7)(5,9)(6,8) ]
gap> PointerButtonDown(1,170,61,1);
gap> MenuSelected( 1, 2, 20 );
#I  InsertVertices from GAP () --> ()
gap> MenuSelected( 1, 1, 1 );
gap> GraphicSubgroupLattice(G);
<graphic subgroup lattice "GraphicSubgroupLattice of [ 18, 4 ]">
gap> MenuSelected( 2, 2, 1 );
#I  All Subgroups (G) --> (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,2\
6,27,G)
gap> PointerButtonDown(2,407,454,1);
gap> PointerButtonDown(2,402,456,1);
gap> PointerButtonDown(2,326,465,1);
gap> PointerButtonDown(2,193,354,1);
gap> PointerButtonDown(2,186,249,1);
gap> PointerButtonDown(2,148,251,1);
gap> PointerButtonDown(2,603,352,1);
gap> PointerButtonDown(2,458,255,1);
gap> PointerButtonDown(2,500,255,1);
gap> PointerButtonDown(2,297,247,1);
gap> PointerButtonDown(2,295,346,1);
gap> PointerButtonDown(2,399,351,1);
gap> PointerButtonDown(2,692,252,1);
gap> PointerButtonDown(2,713,367,1);
gap> PointerButtonDown(2,13,388,1);
gap> PointerButtonDown(2,290,470,1);
gap> PointerButtonDown(2,402,48,1);
gap> PointerButtonDown(2,292,479,1);
gap> MenuSelected( 2, 2, 12 );
#I  Intermediate Subgroups (G,2) --> (15,18,21,24)
gap> PointerButtonDown(2,321,254,1);
gap> PointerButtonDown(2,479,257,1);
gap> PointerButtonDown(2,260,345,1);
gap> PointerButtonDown(2,331,254,1);
gap> PointerButtonDown(2,28,355,1);
gap> PointerButtonDown(2,768,358,1);
gap> PointerButtonDown(2,290,475,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,12,258,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,285,257,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,465,259,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,725,266,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,289,476,1);
gap> PointerButtonDown(2,402,52,1);
gap> MenuSelected( 2, 2, 12 );
#I  Intermediate Subgroups (G,H) --> (K2,K0,K3,K1)
gap> MenuSelected( 2, 0, 1 );
gap> PointerButtonDown(1,405,448,1);
gap> PointerButtonDown(1,402,48,1);
gap> MenuSelected( 1, 2, 12 );
#I  Intermediate Subgroups (G,H) --> (K2,K0,K1,K3)
gap> MenuSelected( 1, 0, 1 );
gap> GG := Group([(1,2,3)(4,5,6),(1,3,2)(4,6,5),(1,4)(2,6)(3,5),(1,5)(2,4)(3,6),(1,6)(2,5)(3,4)]);
Group([ (1,2,3)(4,5,6), (1,3,2)(4,6,5), (1,4)(2,6)(3,5), (1,5)(2,4)(3,6), (1,6)(2,5)(3,4) ])
gap> Size(GG);
6
gap> StructureDescription(GG);
"S3"
gap> Stabilizer(GG,1);
Group(())
gap> Group([(1,2,3,4)(5,6,7,8),(1,3)(2,4)(5,7)(6,8),(1,4,3,2)(5,8,7,6),(1,5)(2,8)(3,7)(4,6),(1,6)(2,5)(3,8)(4,7),(1,7)(2,6)(3,5)(4,8),(1,8)(2,7)(3,6)(4,5)]);
Group([ (1,2,3,4)(5,6,7,8), (1,3)(2,4)(5,7)(6,8), (1,4,3,2)(5,8,7,6), (1,5)(2,8)(3,7)(4,6), 
  (1,6)(2,5)(3,8)(4,7), (1,7)(2,6)(3,5)(4,8), (1,8)(2,7)(3,6)(4,5) ])
gap> G:=Group([(1,2,3,4)(5,6,7,8),(1,3)(2,4)(5,7)(6,8),(1,4,3,2)(5,8,7,6),(1,5)(2,8)(3,7)(4,6),(1,6)(2,5)(3,8)(4,7),(1,7)(2,6)(3,5)(4,8),(1,8)(2,7)(3,6)(4,5)]);
Group([ (1,2,3,4)(5,6,7,8), (1,3)(2,4)(5,7)(6,8), (1,4,3,2)(5,8,7,6), (1,5)(2,8)(3,7)(4,6), 
  (1,6)(2,5)(3,8)(4,7), (1,7)(2,6)(3,5)(4,8), (1,8)(2,7)(3,6)(4,5) ])
gap> StructureDescription(G);
"D8"
gap> Stabilizer(G,1);
Group(())
gap> GraphicSubgroupLattice(G);
<graphic subgroup lattice "GraphicSubgroupLattice of [ 8, 3 ]">
gap> MenuSelected( 3, 2, 1 );
#I  All Subgroups (G) --> (1,2,3,4,5,6,7,8,9,G)
gap> PointerButtonDown(3,195,222,1);
gap> PointerButtonDown(3,227,376,1);
gap> PointerButtonDown(3,604,377,1);
gap> PointerButtonDown(3,398,224,1);
gap> PointerButtonDown(3,473,220,1);
gap> PointerButtonDown(3,600,228,1);
gap> PointerButtonDown(3,242,251,1);
gap> PointerButtonDown(3,529,239,1);
gap> PointerButtonDown(3,267,241,1);
gap> PointerButtonDown(3,262,374,1);
gap> PointerButtonDown(3,401,232,1);
gap> PointerButtonDown(3,546,383,1);
gap> PointerButtonDown(3,403,372,1);
gap> PointerButtonDown(3,289,375,1);
gap> PointerButtonDown(3,532,238,1);
gap> PointerButtonDown(3,273,239,1);
gap> PointerButtonDown(3,518,385,1);
gap> PointerButtonDown(3,404,524,1);
gap> PointerButtonDown(3,471,490,1);
gap> PointerButtonDown(3,404,372,1);
gap> PointerButtonDown(3,276,240,1);
gap> PointerButtonDown(3,529,238,1);
gap> PointerButtonDown(3,262,380,1);
gap> PointerButtonDown(3,297,383,1);
gap> PointerButtonDown(3,515,382,1);
gap> PointerButtonDown(3,545,383,1);
gap> PointerButtonDown(3,396,223,1);
gap> MenuSelected( 3, 0, 1 );
gap> pwd
> ;
Variable: 'pwd' must have a value

gap> cd ..
Variable: 'cd' must have a value

Syntax error: ; expected
cd ..
    ^
gap> Read("findM5Upper.g");
Error, file "findM5Upper.g" must exist and be readable called from
<function>( <arguments> ) called from read-eval-loop
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' to continue
brk> quit;
gap> ls;
Variable: 'ls' must have a value

gap> Read("~/pub/research/DeMeo/LatticeTheory/GAP/programs/findM5Upper.g");
gap> findM5Upper(20,100);
0 0 Checking groups of order |G| = 20... there is/are 5 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 21... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 22... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 23... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 24... there is/are 15 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 25... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 26... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 27... there is/are 
5 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 28... there is/are 
4 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 29... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 30... there is/are 
4 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 31... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 32... there is/are 
51 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 33... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 34... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 35... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 36... there is/are 
14 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 37... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 38... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 39... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 40... there is/are 
14 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 41... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 42... there is/are 
6 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 43... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 44... there is/are 
4 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 45... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 46... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 47... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 48... there is/are 52 such group(s)...
1 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[2] = A4
  ...it has non-core-free max subgp ms[6] = A4
  ...it has non-core-free max subgp ms[10] = A4
  ...it has non-core-free max subgp ms[14] = A4
  ...it has non-core-free max subgp ms[18] = A4

2 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[2] = A4
  ...it has non-core-free max subgp ms[7] = A4
  ...it has non-core-free max subgp ms[13] = A4
  ...it has non-core-free max subgp ms[15] = A4
  ...it has non-core-free max subgp ms[20] = A4

3 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[2] = A4
  ...it has non-core-free max subgp ms[8] = A4
  ...it has non-core-free max subgp ms[11] = A4
  ...it has non-core-free max subgp ms[16] = A4
  ...it has non-core-free max subgp ms[21] = A4

4 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[2] = A4
  ...it has non-core-free max subgp ms[9] = A4
  ...it has non-core-free max subgp ms[12] = A4
  ...it has non-core-free max subgp ms[17] = A4
  ...it has non-core-free max subgp ms[19] = A4

5 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[3] = A4
  ...it has non-core-free max subgp ms[6] = A4
  ...it has non-core-free max subgp ms[11] = A4
  ...it has non-core-free max subgp ms[15] = A4
  ...it has non-core-free max subgp ms[19] = A4

6 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[3] = A4
  ...it has non-core-free max subgp ms[7] = A4
  ...it has non-core-free max subgp ms[12] = A4
  ...it has non-core-free max subgp ms[14] = A4
  ...it has non-core-free max subgp ms[21] = A4

7 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[3] = A4
  ...it has non-core-free max subgp ms[8] = A4
  ...it has non-core-free max subgp ms[10] = A4
  ...it has non-core-free max subgp ms[17] = A4
  ...it has non-core-free max subgp ms[20] = A4

8 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[3] = A4
  ...it has non-core-free max subgp ms[9] = A4
  ...it has non-core-free max subgp ms[13] = A4
  ...it has non-core-free max subgp ms[16] = A4
  ...it has non-core-free max subgp ms[18] = A4

9 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[4] = A4
  ...it has non-core-free max subgp ms[6] = A4
  ...it has non-core-free max subgp ms[12] = A4
  ...it has non-core-free max subgp ms[16] = A4
  ...it has non-core-free max subgp ms[20] = A4

10 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[4] = A4
  ...it has non-core-free max subgp ms[7] = A4
  ...it has non-core-free max subgp ms[11] = A4
  ...it has non-core-free max subgp ms[17] = A4
  ...it has non-core-free max subgp ms[18] = A4

11 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[4] = A4
  ...it has non-core-free max subgp ms[8] = A4
  ...it has non-core-free max subgp ms[13] = A4
  ...it has non-core-free max subgp ms[14] = A4
  ...it has non-core-free max subgp ms[19] = A4

12 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[4] = A4
  ...it has non-core-free max subgp ms[9] = A4
  ...it has non-core-free max subgp ms[10] = A4
  ...it has non-core-free max subgp ms[15] = A4
  ...it has non-core-free max subgp ms[21] = A4

13 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[5] = A4
  ...it has non-core-free max subgp ms[6] = A4
  ...it has non-core-free max subgp ms[13] = A4
  ...it has non-core-free max subgp ms[17] = A4
  ...it has non-core-free max subgp ms[21] = A4

14 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[5] = A4
  ...it has non-core-free max subgp ms[7] = A4
  ...it has non-core-free max subgp ms[10] = A4
  ...it has non-core-free max subgp ms[16] = A4
  ...it has non-core-free max subgp ms[19] = A4

15 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[5] = A4
  ...it has non-core-free max subgp ms[8] = A4
  ...it has non-core-free max subgp ms[12] = A4
  ...it has non-core-free max subgp ms[15] = A4
  ...it has non-core-free max subgp ms[18] = A4

16 0FOUND AN M_5: GAPid = [48, 50]; [H, G] = [C3, (C2 x C2 x C2 x C2) : C3]
  ...it has non-core-free max subgp ms[5] = A4
  ...it has non-core-free max subgp ms[9] = A4
  ...it has non-core-free max subgp ms[11] = A4
  ...it has non-core-free max subgp ms[14] = A4
  ...it has non-core-free max subgp ms[20] = A4
 ... done (max number of meets = 5) 
16 0 Checking groups of order |G| = 49... there is/are 
2 such group(s)... ... done (max number of meets = 0) 
16 0 Checking groups of order |G| = 50... there is/are 
5 such group(s)... ... done (max number of meets = 0) 
16 0 Checking groups of order |G| = 51... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
16 0 Checking groups of order |G| = 52... there is/are 
5 such group(s)... ... done (max number of meets = 0) 
16 0 Checking groups of order |G| = 53... there is/are 
1 such group(s)... ... done (max number of meets = 0) 
user interrupt at
len := Length( e );
 called from
SubgroupsSolvableGroup( G, rec(
    retnorm := true ) ) called from
LatticeSubgroups( G ) called from
ConjugacyClassesSubgroups( F ) called from
IntermediateSubgroups( G, H ) called from
<function>( <arguments> ) called from read-eval-loop
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' to continue
brk> SizeScreen([ 0176, 0050 ]);;
brk> quit;
16 0 Checking groups of order |G| = 54... there is/are 15 such group(s)...gap> 
gap> G := Group([(2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9)]);
Group([ (2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9) ])
gap> StructureDescription(G);
"(C3 x C3) : C2"
gap> H := Stabilizer(G,2);
Group([ (1,3)(4,9)(5,8)(6,7) ])
gap> Elements(H);
[ (), (1,3)(4,9)(5,8)(6,7) ]
gap> H := Stabilizer(G,4);
Group([ (1,7)(2,9)(3,8)(5,6) ])
gap> Elements(H);
[ (), (1,7)(2,9)(3,8)(5,6) ]
gap> G := Group([(2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9)]);
Group([ (2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9) ])
gap> StructureDescription(G);  % returns "(C3 x C3) : C2"
"(C3 x C3) : C2"
Syntax error: expression expected
StructureDescription(G);  % returns "(C3 x C3) : C2"
                          ^
> G1 := Stabilizer(G, 1);    % returns Group([ (2,3)(4,7)(5,9)(6,8) ])
Syntax error: expression expected
G1 := Stabilizer(G, 1);    % returns Group([ (2,3)(4,7)(5,9)(6,8) ])
                           ^
> G2 := Stabilizer(G, 2);    % returns Group([ (2,3)(4,7)(5,9)(6,8) ])
Syntax error: expression expected
G2 := Stabilizer(G, 2);    % returns Group([ (2,3)(4,7)(5,9)(6,8) ])
                           ^
> G4 := Stabilizer(G, 4);    % returns Group([ (2,3)(4,7)(5,9)(6,8) ])
Syntax error: expression expected
G4 := Stabilizer(G, 4);    % returns Group([ (2,3)(4,7)(5,9)(6,8) ])
                           ^
> quit;
gap> G := Group([(2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9)]);
Group([ (2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9) ])
gap> StructureDescription(G);   # returns "(C3 x C3) : C2"
"(C3 x C3) : C2"
gap> G1 := Stabilizer(G, 1);    # returns Group([ (2,3)(4,7)(5,9)(6,8) ])
Group([ (2,3)(4,7)(5,9)(6,8) ])
gap> G2 := Stabilizer(G, 2);    # returns Group([ (2,3)(4,7)(5,9)(6,8) ])
Group([ (1,3)(4,9)(5,8)(6,7) ])
gap> G4 := Stabilizer(G, 4);    # returns Group([ (2,3)(4,7)(5,9)(6,8) ])
Group([ (1,7)(2,9)(3,8)(5,6) ])
gap> L := GraphicSubgroupLattice(G);
<graphic subgroup lattice "GraphicSubgroupLattice of [ 18, 4 ]">
gap> InsertVertex(L, G1);
Error, window system: Illegal Answer called from
WcSetColor( WindowId( circle ), ColorId( circle!.color ) ); called from
Draw( circle ); called from
Circle( sheet, x, y, r, rec(
    color := vertex!.color ) ) called from
Vertex( poset, vertex!.x, level!.top + vertex!.y, rec(
    label := label,
    color := color,
    width := width ) ) called from
Vertex( sheet, data, rec(
    levelparam := newlevel,
    label := String( sheet!.largestlabel ) ) ) called from
...
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' to continue
brk> a3+I0+filterG1 := IntermediateSubgroups(G,G1);;  
Syntax error: warning: unbound global variable in *errin* line 1
a3+I0+filterG1 := IntermediateSubgroups(G,G1);;  
  ^
Variable: 'a3' must have a value

Syntax error: warning: unbound global variable in *errin* line 1
a3+I0+filterG1 := IntermediateSubgroups(G,G1);;  
     ^
Syntax error: warning: unbound global variable in *errin* line 1
a3+I0+filterG1 := IntermediateSubgroups(G,G1);;  
                ^
Syntax error: ; expected in *errin* line 1
a3+I0+filterG1 := IntermediateSubgroups(G,G1);;  
                ^
brk> for k in [1..Size(filterG1.subgroups)] do
Syntax error: warning: unbound global variable in *errin* line 2
for k in [1..Size(filterG1.subgroups)] do
                          ^
>     InsertVertex(L, filterG1.subgroups[k]); 
Syntax error: warning: unbound global variable in *errin* line 3
    InsertVertex(L, filterG1.subgroups[k]); 
                            ^
> od;
Variable: 'filterG1' must have an assigned value at
for k  in [ 1 .. Size( filterG1.subgroups ) ]  do
    InsertVertex( L, filterG1.subgroups[k] );
od;
 called from
<compiled or corrupted call value>  called from
WcSetColor( WindowId( circle ), ColorId( circle!.color ) ); called from
Draw( circle ); called from
Circle( sheet, x, y, r, rec(
    color := vertex!.color ) ) called from
Vertex( poset, vertex!.x, level!.top + vertex!.y, rec(
    label := label,
    color := color,
    width := width ) ) called from
...
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' after assigning a value to continue
brk_02> quit;
brk> quit;
gap> G := Group([(2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9)]);
Group([ (2,3)(4,7)(5,9)(6,8), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9) ])
gap> StructureDescription(G);   # returns "(C3 x C3) : C2"
"(C3 x C3) : C2"
gap> G1 := Stabilizer(G, 1);    # returns Group([ (2,3)(4,7)(5,9)(6,8) ])
Group([ (2,3)(4,7)(5,9)(6,8) ])
gap> G2 := Stabilizer(G, 2);    # returns Group([ (2,3)(4,7)(5,9)(6,8) ])
Group([ (1,3)(4,9)(5,8)(6,7) ])
gap> G4 := Stabilizer(G, 4);    # returns Group([ (2,3)(4,7)(5,9)(6,8) ])
Group([ (1,7)(2,9)(3,8)(5,6) ])
gap> L := GraphicSubgroupLattice(G);
<graphic subgroup lattice "GraphicSubgroupLattice of [ 18, 4 ]">
gap> 
gap> InsertVertex(L, G1);
[ <vertex of graphic graph, label: "2", Serial:51>, true ]
gap> MenuSelected( 4, 0, 2 );
gap> filterG1 := IntermediateSubgroups(G,G1);;  
gap> for k in [1..Size(filterG1.subgroups)] do
>     InsertVertex(L, filterG1.subgroups[k]); 
> od;
gap> PointerButtonDown(5,403,458,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,194,251,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,290,253,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,405,247,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,603,248,1);
gap> MenuSelected( 5, 1, 12 );
gap> InsertVertex(L, G2);
Error, window system: Illegal Answer called from
WcSetColor( WindowId( circle ), ColorId( circle!.color ) ); called from
Draw( circle ); called from
Circle( sheet, x, y, r, rec(
    color := vertex!.color ) ) called from
Vertex( poset, vertex!.x, level!.top + vertex!.y, rec(
    label := label,
    color := color,
    width := width ) ) called from
Vertex( sheet, data, rec(
    levelparam := newlevel,
    classparam := lev!.classparams[conj],
    label := String( sheet!.largestlabel ) ) ) called from
...
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' to continue
brk> a3+I0+filterG2 := IntermediateSubgroups(G,G2);;  
Syntax error: warning: unbound global variable in *errin* line 1
a3+I0+filterG2 := IntermediateSubgroups(G,G2);;  
  ^
Variable: 'a3' must have a value

Syntax error: warning: unbound global variable in *errin* line 1
a3+I0+filterG2 := IntermediateSubgroups(G,G2);;  
     ^
Syntax error: warning: unbound global variable in *errin* line 1
a3+I0+filterG2 := IntermediateSubgroups(G,G2);;  
                ^
Syntax error: ; expected in *errin* line 1
a3+I0+filterG2 := IntermediateSubgroups(G,G2);;  
                ^
brk> quit;
gap> InsertVertex(L, G2);
[ <vertex of graphic graph, label: "8", Serial:57>, true ]
gap> PointerButtonDown(5,427,450,1);
gap> PointerButtonDown(5,552,443,1);
gap> PointerButtonDown(5,417,454,1);
gap> MenuSelected( 5, 1, 12 );
gap> filterG2 := IntermediateSubgroups(G,G2);;  
gap> for k in [1..Size(filterG2.subgroups)] do
>     InsertVertex(L, filterG2.subgroups[k]); 
> od;
gap> PointerButtonDown(5,220,248,1);
gap> PointerButtonDown(5,603,256,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,220,250,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,189,247,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,301,251,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,405,252,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,607,252,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,192,250,1);
gap> MenuSelected( 5, 1, 12 );
gap> PointerButtonDown(5,293,251,1);
gap> MenuSelected( 5, 1, 12 );
gap> MenuSelected( 5, 0, 2 );
gap> L := GraphicSubgroupLattice(G);
Error, window system: Illegal Answer called from
WcOpenWindow( title, width, height ) called from
GraphicSheet( name, width, height ) called from
GraphicPoset( defaults.title, defaults.width, defaults.height ) called from
GraphicSubgroupLattice( G, rec(
     ) ) called from
<function>( <arguments> ) called from read-eval-loop
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' to continue
brk> a6+I0+I6+InsertVertex(L, G1);
Syntax error: warning: unbound global variable in *errin* line 1
a6+I0+I6+InsertVertex(L, G1);
  ^
Variable: 'a6' must have a value

Syntax error: warning: unbound global variable in *errin* line 1
a6+I0+I6+InsertVertex(L, G1);
     ^
Syntax error: warning: unbound global variable in *errin* line 1
a6+I0+I6+InsertVertex(L, G1);
        ^
brk> quit
> ;
gap> L := GraphicSubgroupLattice(G);
<graphic subgroup lattice "GraphicSubgroupLattice of [ 18, 4 ]">
gap> InsertVertex(L, G1);
[ <vertex of graphic graph, label: "2", Serial:63>, true ]
gap> filterG1 := IntermediateSubgroups(G,G1);;  
gap> for k in [1..Size(filterG1.subgroups)] do
>     InsertVertex(L, filterG1.subgroups[k]); 
> od;
gap> MenuSelected( 7, 0, 2 );
gap> L := GraphicSubgroupLattice(G);
<graphic subgroup lattice "GraphicSubgroupLattice of [ 18, 4 ]">
gap> InsertVertex(L, G1);
[ <vertex of graphic graph, label: "2", Serial:70>, true ]
gap> filterG1 := IntermediateSubgroups(G,G1);;  
gap> InsertVertex(L, filterG1.subgroups[1]); 
[ <vertex of graphic graph, label: "3", Serial:71>, true ]
gap> PointerButtonDown(8,401,449,1);
gap> MenuSelected( 8, 1, 12 );
gap> PointerButtonDown(8,405,255,1);
gap> MenuSelected( 8, 1, 12 );
gap> InsertVertex(L, filterG1.subgroups[2]); 
[ <vertex of graphic graph, label: "4", Serial:72>, true ]
gap> PointerButtonDown(8,192,252,1);
gap> MenuSelected( 8, 1, 12 );
gap> InsertVertex(L, filterG1.subgroups[3]); 
[ <vertex of graphic graph, label: "5", Serial:73>, true ]
gap> PointerButtonDown(8,608,253,1);
gap> MenuSelected( 8, 1, 12 );
gap> InsertVertex(L, filterG1.subgroups[4]); 
[ <vertex of graphic graph, label: "6", Serial:74>, true ]
gap> InsertVertex(L, filterG1.subgroups[5]); 
List Element: <list>[5] must have an assigned value
not in any function
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' after assigning a value to continue
brk> quit;
gap> PointerButtonDown(8,295,252,1);
gap> MenuSelected( 8, 1, 12 );
gap> InsertVertex(L, G2);
[ <vertex of graphic graph, label: "7", Serial:75>, true ]
gap> filterG2 := IntermediateSubgroups(G,G2);;  
gap> InsertVertex(L, filterG2.subgroups[1]); 
[ <vertex of graphic graph, label: "H1", Serial:71>, false ]
gap> InsertVertex(L, filterG2.subgroups[2]); 
[ <vertex of graphic graph, label: "8", Serial:76>, true ]
gap> PointerButtonDown(8,227,250,1);
gap> MenuSelected( 8, 1, 12 );
gap> InsertVertex(L, filterG2.subgroups[3]); 
[ <vertex of graphic graph, label: "9", Serial:77>, true ]
gap> PointerButtonDown(8,638,249,1);
gap> MenuSelected( 8, 1, 12 );
gap> InsertVertex(L, filterG2.subgroups[4]); 
[ <vertex of graphic graph, label: "10", Serial:78>, true ]
gap> PointerButtonDown(8,325,244,1);
gap> MenuSelected( 8, 1, 12 );
gap> filterG4 := IntermediateSubgroups(G,G4);;  
gap> InsertVertex(L, G4);
[ <vertex of graphic graph, label: "11", Serial:79>, true ]
gap> PointerButtonDown(8,456,445,1);
gap> MenuSelected( 8, 1, 12 );
gap> PointerButtonDown(8,430,450,1);
gap> MenuSelected( 8, 1, 12 );
gap> InsertVertex(L, filterG4.subgroups[1]); 
[ <vertex of graphic graph, label: "12", Serial:80>, true ]
gap> PointerButtonDown(8,432,253,1);
gap> MenuSelected( 8, 1, 12 );
gap> InsertVertex(L, filterG4.subgroups[2]); 
[ <vertex of graphic graph, label: "H2", Serial:72>, false ]
gap> InsertVertex(L, filterG4.subgroups[3]); 
[ <vertex of graphic graph, label: "J3", Serial:77>, false ]
gap> InsertVertex(L, filterG4.subgroups[4]); 
[ <vertex of graphic graph, label: "13", Serial:81>, true ]
gap> PointerButtonDown(8,354,251,1);
gap> MenuSelected( 8, 1, 12 );
gap> PointerButtonDown(8,392,448,1);
gap> PointerButtonDown(8,398,247,1);
gap> PointerButtonDown(8,225,254,1);
gap> PointerButtonDown(8,356,250,1);
gap> PointerButtonDown(8,599,251,1);
gap> PointerButtonDown(8,500,257,1);
gap> PointerButtonDown(8,388,261,1);
gap> PointerButtonDown(8,270,253,1);
gap> PointerButtonDown(8,204,251,1);
gap> PointerButtonDown(8,396,452,1);
gap> PointerButtonDown(8,416,256,1);
gap> PointerButtonDown(8,430,251,1);
gap> PointerButtonDown(8,341,252,1);
gap> PointerButtonDown(8,430,452,1);
gap> PointerButtonDown(8,397,52,1);
gap> MenuSelected( 8, 2, 12 );
#I  Intermediate Subgroups (G,G4) --> (K1,H2,J3,K4)
gap> MenuSelected( 8, 0, 1 );
gap> PointerButtonDown(8,399,456,1);
gap> PointerButtonDown(8,398,46,1);
gap> MenuSelected( 8, 2, 12 );
#I  Intermediate Subgroups (G,G2) --> (H1,J2,J3,J4)
gap> MenuSelected( 8, 0, 1 );
gap> PointerButtonDown(8,374,454,1);
gap> PointerButtonDown(8,400,44,1);
gap> MenuSelected( 8, 0, 1 );
gap> MenuSelected( 8, 2, 12 );
#I  Intermediate Subgroups (G,G1) --> (H1,H2,H3,H4)
gap> MenuSelected( 8, 0, 1 );
gap> PointerButtonDown(8,401,448,1);
gap> PointerButtonDown(8,401,45,1);
gap> PointerButtonDown(8,406,456,1);
gap> MenuSelected( 8, 2, 12 );
#I  Intermediate Subgroups (G,G2) --> (H1,J2,J3,J4)
gap> MenuSelected( 8, 0, 1 );
gap> Elements(filterG1.subgroups[1]); PointerButtonDown(8,430,452,1);
[ (), (2,3)(4,7)(5,9)(6,8), (1,2)(4,8)(5,7)(6,9), (1,2,3)(4,5,6)(7,8,9), (1,3,2)(4,6,5)(7,9,8), (1,3)(4,9)(5,8)(6,7) ]
gap> Elements(filterG1.subgroups[2]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,4,7)(2,5,8)(3,6,9), (1,4)(2,6)(3,5)(8,9), (1,7,4)(2,8,5)(3,9,6), (1,7)(2,9)(3,8)(5,6) ]
gap> Elements(filterG1.subgroups[3]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,6,8)(2,4,9)(3,5,7), (1,6)(2,5)(3,4)(7,9), (1,8)(2,7)(3,9)(4,5), (1,8,6)(2,9,4)(3,7,5) ]
gap> Elements(filterG1.subgroups[4]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,5)(2,4)(3,6)(7,8), (1,5,9)(2,6,7)(3,4,8), (1,9,5)(2,7,6)(3,8,4), (1,9)(2,8)(3,7)(4,6) ]
gap> Elements(filterG2.subgroups[1]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,2)(4,8)(5,7)(6,9), (1,2,3)(4,5,6)(7,8,9), (1,3,2)(4,6,5)(7,9,8), (1,3)(4,9)(5,8)(6,7) ]
gap> Elements(filterG2.subgroups[2]);
[ (), (1,3)(4,9)(5,8)(6,7), (1,4,7)(2,5,8)(3,6,9), (1,6)(2,5)(3,4)(7,9), (1,7,4)(2,8,5)(3,9,6), (1,9)(2,8)(3,7)(4,6) ]
gap> Elements(filterG2.subgroups[3]);
[ (), (1,3)(4,9)(5,8)(6,7), (1,5)(2,4)(3,6)(7,8), (1,6,8)(2,4,9)(3,5,7), (1,7)(2,9)(3,8)(5,6), (1,8,6)(2,9,4)(3,7,5) ]
gap> Elements(filterG2.subgroups[4]);
[ (), (1,3)(4,9)(5,8)(6,7), (1,4)(2,6)(3,5)(8,9), (1,5,9)(2,6,7)(3,4,8), (1,8)(2,7)(3,9)(4,5), (1,9,5)(2,7,6)(3,8,4) ]
gap> Elements(filterG4.subgroups[1]);
[ (), (1,2,3)(4,5,6)(7,8,9), (1,3,2)(4,6,5)(7,9,8), (1,7)(2,9)(3,8)(5,6), (1,8)(2,7)(3,9)(4,5), (1,9)(2,8)(3,7)(4,6) ]
gap> Elements(filterG4.subgroups[2]);
[ (), (2,3)(4,7)(5,9)(6,8), (1,4,7)(2,5,8)(3,6,9), (1,4)(2,6)(3,5)(8,9), (1,7,4)(2,8,5)(3,9,6), (1,7)(2,9)(3,8)(5,6) ]
gap> Elements(filterG4.subgroups[3]);
[ (), (1,3)(4,9)(5,8)(6,7), (1,5)(2,4)(3,6)(7,8), (1,6,8)(2,4,9)(3,5,7), (1,7)(2,9)(3,8)(5,6), (1,8,6)(2,9,4)(3,7,5) ]
gap> Elements(filterG4.subgroups[4]);
[ (), (1,2)(4,8)(5,7)(6,9), (1,5,9)(2,6,7)(3,4,8), (1,6)(2,5)(3,4)(7,9), (1,7)(2,9)(3,8)(5,6), (1,9,5)(2,7,6)(3,8,4) ]
gap> PointerButtonDown(2,289,477,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,15,263,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,291,257,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,466,258,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,716,259,1);
gap> MenuSelected( 2, 1, 12 );
gap> PointerButtonDown(2,289,473,1);
gap> PointerButtonDown(2,404,49,1);
gap> MenuSelected( 2, 2, 12 );
#I  Intermediate Subgroups (G,G1) --> (H3,H1,H4,H2)
gap> MenuSelected( 2, 0, 1 );
gap> Read("~/pub/research/DeMeo/LatticeTheory/GAP/programs/findM4Upper.g");
gap> findM4Upper(1,50);
0 0 Checking groups of order |G| = 1... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 2... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 3... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 4... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 5... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 6... there is/are 2 such group(s)...
1 0FOUND AN M_4: GAPid = [6, 1]; [H, G] = [1, S3]
 ... done (max number of meets = 4) 
1 0 Checking groups of order |G| = 7... there is/are 1 such group(s)... ... done (max number of meets = 0) 
1 0 Checking groups of order |G| = 8... there is/are 5 such group(s)... ... done (max number of meets = 0) 
1 0 Checking groups of order |G| = 9... there is/are 2 such group(s)...
2 0FOUND AN M_4: GAPid = [9, 2]; [H, G] = [1, C3 x C3]
 ... done (max number of meets = 4) 
2 0 Checking groups of order |G| = 10... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2 0 Checking groups of order |G| = 11... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2 0 Checking groups of order |G| = 12... there is/are 5 such group(s)...
3 0FOUND AN M_4: GAPid = [12, 1]; [H, G] = [C2, C3 : C4]

4 0FOUND AN M_4: GAPid = [12, 4]; [H, G] = [C2, D12]
 ... done (max number of meets = 4) 
4 0 Checking groups of order |G| = 13... there is/are 1 such group(s)... ... done (max number of meets = 0) 
4 0 Checking groups of order |G| = 14... there is/are 2 such group(s)... ... done (max number of meets = 0) 
4 0 Checking groups of order |G| = 15... there is/are 1 such group(s)... ... done (max number of meets = 0) 
4 0 Checking groups of order |G| = 16... there is/are 14 such group(s)... ... done (max number of meets = 0) 
4 0 Checking groups of order |G| = 17... there is/are 1 such group(s)... ... done (max number of meets = 0) 
4 0 Checking groups of order |G| = 18... there is/are 5 such group(s)...
5 0FOUND AN M_4: GAPid = [18, 1]; [H, G] = [C3, D18]

6 0FOUND AN M_4: GAPid = [18, 3]; [H, G] = [C3, C3 x S3]

7 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C3, (C3 x C3) : C2]

8 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C3, (C3 x C3) : C2]

9 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C3, (C3 x C3) : C2]

10 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C3, (C3 x C3) : C2]

11 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

12 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

13 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

14 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

15 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

16 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

17 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

18 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

19 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

20 0FOUND AN M_4: GAPid = [18, 5]; [H, G] = [C2, C6 x C3]
 ... done (max number of meets = 4) 
20 0 Checking groups of order |G| = 19... there is/are 1 such group(s)... ... done (max number of meets = 0) 
20 0 Checking groups of order |G| = 20... there is/are 5 such group(s)... ... done (max number of meets = 0) 
20 0 Checking groups of order |G| = 21... there is/are 2 such group(s)... ... done (max number of meets = 0) 
20 0 Checking groups of order |G| = 22... there is/are 2 such group(s)... ... done (max number of meets = 0) 
20 0 Checking groups of order |G| = 23... there is/are 1 such group(s)... ... done (max number of meets = 0) 
20 0 Checking groups of order |G| = 24... there is/are 15 such group(s)...
21 0FOUND AN M_4: GAPid = [24, 1]; [H, G] = [C4, C3 : C8]

22 0FOUND AN M_4: GAPid = [24, 4]; [H, G] = [C4, C3 : Q8]

23 0FOUND AN M_4: GAPid = [24, 5]; [H, G] = [C4, C4 x S3]

24 0FOUND AN M_4: GAPid = [24, 6]; [H, G] = [C4, D24]

25 0FOUND AN M_4: GAPid = [24, 7]; [H, G] = [C2 x C2, C2 x (C3 : C4)]

26 0FOUND AN M_4: GAPid = [24, 8]; [H, G] = [C2 x C2, (C6 x C2) : C2]

27 0FOUND AN M_4: GAPid = [24, 12]; [H, G] = [C2 x C2, S4]

28 0FOUND AN M_4: GAPid = [24, 14]; [H, G] = [C2 x C2, C2 x C2 x S3]
 ... done (max number of meets = 4) 
28 0 Checking groups of order |G| = 25... there is/are 2 such group(s)... ... done (max number of meets = 0) 
28 0 Checking groups of order |G| = 26... there is/are 2 such group(s)... ... done (max number of meets = 0) 
28 0 Checking groups of order |G| = 27... there is/are 5 such group(s)...
29 0FOUND AN M_4: GAPid = [27, 2]; [H, G] = [C3, C9 x C3]

30 0FOUND AN M_4: GAPid = [27, 3]; [H, G] = [C3, (C3 x C3) : C3]

31 0FOUND AN M_4: GAPid = [27, 4]; [H, G] = [C3, C9 : C3]

32 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

33 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

34 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

35 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

36 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

37 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

38 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

39 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

40 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

41 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

42 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

43 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]

44 0FOUND AN M_4: GAPid = [27, 5]; [H, G] = [C3, C3 x C3 x C3]
 ... done (max number of meets = 4) 
44 0 Checking groups of order |G| = 28... there is/are 4 such group(s)... ... done (max number of meets = 0) 
44 0 Checking groups of order |G| = 29... there is/are 1 such group(s)... ... done (max number of meets = 0) 
44 0 Checking groups of order |G| = 30... there is/are 4 such group(s)...
45 0FOUND AN M_4: GAPid = [30, 1]; [H, G] = [C5, C5 x S3]

46 0FOUND AN M_4: GAPid = [30, 3]; [H, G] = [C5, D30]
 ... done (max number of meets = 4) 
46 0 Checking groups of order |G| = 31... there is/are 1 such group(s)... ... done (max number of meets = 0) 
46 0 Checking groups of order |G| = 32... there is/are 51 such group(s)... ... done (max number of meets = 0) 
46 0 Checking groups of order |G| = 33... there is/are 1 such group(s)... ... done (max number of meets = 0) 
46 0 Checking groups of order |G| = 34... there is/are 2 such group(s)... ... done (max number of meets = 0) 
46 0 Checking groups of order |G| = 35... there is/are 1 such group(s)... ... done (max number of meets = 0) 
46 0 Checking groups of order |G| = 36... there is/are 14 such group(s)...
47 0FOUND AN M_4: GAPid = [36, 1]; [H, G] = [C6, C9 : C4]

48 0FOUND AN M_4: GAPid = [36, 4]; [H, G] = [C6, D36]

49 0FOUND AN M_4: GAPid = [36, 6]; [H, G] = [C6, C3 x (C3 : C4)]

50 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C6, (C3 x C3) : C4]

51 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C6, (C3 x C3) : C4]

52 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C6, (C3 x C3) : C4]

53 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C6, (C3 x C3) : C4]

54 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

55 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

56 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

57 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

58 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

59 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

60 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

61 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

62 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

63 0FOUND AN M_4: GAPid = [36, 8]; [H, G] = [C4, C12 x C3]

64 0FOUND AN M_4: GAPid = [36, 10]; [H, G] = [S3, S3 x S3]

65 0FOUND AN M_4: GAPid = [36, 10]; [H, G] = [S3, S3 x S3]

66 0FOUND AN M_4: GAPid = [36, 11]; [H, G] = [C2 x C2, C3 x A4]

67 0FOUND AN M_4: GAPid = [36, 12]; [H, G] = [C6, C6 x S3]

68 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C6, C2 x ((C3 x C3) : C2)]

69 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C6, C2 x ((C3 x C3) : C2)]

70 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C6, C2 x ((C3 x C3) : C2)]

71 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C6, C2 x ((C3 x C3) : C2)]

72 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

73 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

74 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

75 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

76 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

77 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

78 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

79 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

80 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

81 0FOUND AN M_4: GAPid = [36, 14]; [H, G] = [C2 x C2, C6 x C6]
 ... done (max number of meets = 4) 
81 0 Checking groups of order |G| = 37... there is/are 1 such group(s)... ... done (max number of meets = 0) 
81 0 Checking groups of order |G| = 38... there is/are 2 such group(s)... ... done (max number of meets = 0) 
81 0 Checking groups of order |G| = 39... there is/are 2 such group(s)... ... done (max number of meets = 0) 
81 0 Checking groups of order |G| = 40... there is/are 14 such group(s)... ... done (max number of meets = 0) 
81 0 Checking groups of order |G| = 41... there is/are 1 such group(s)... ... done (max number of meets = 0) 
81 0 Checking groups of order |G| = 42... there is/are 6 such group(s)...
82 0FOUND AN M_4: GAPid = [42, 3]; [H, G] = [C7, C7 x S3]

83 0FOUND AN M_4: GAPid = [42, 5]; [H, G] = [C7, D42]
 ... done (max number of meets = 4) 
83 0 Checking groups of order |G| = 43... there is/are 1 such group(s)... ... done (max number of meets = 0) 
83 0 Checking groups of order |G| = 44... there is/are 4 such group(s)... ... done (max number of meets = 0) 
83 0 Checking groups of order |G| = 45... there is/are 2 such group(s)...
84 0FOUND AN M_4: GAPid = [45, 2]; [H, G] = [C5, C15 x C3]
 ... done (max number of meets = 4) 
84 0 Checking groups of order |G| = 46... there is/are 2 such group(s)... ... done (max number of meets = 0) 
84 0 Checking groups of order |G| = 47... there is/are 1 such group(s)... ... done (max number of meets = 0) 
84 0 Checking groups of order |G| = 48... there is/are 52 such group(s)...
85 0FOUND AN M_4: GAPid = [48, 1]; [H, G] = [C8, C3 : C16]

86 0FOUND AN M_4: GAPid = [48, 4]; [H, G] = [C8, C8 x S3]

87 0FOUND AN M_4: GAPid = [48, 5]; [H, G] = [C8, C24 : C2]

88 0FOUND AN M_4: GAPid = [48, 6]; [H, G] = [C8, C24 : C2]

89 0FOUND AN M_4: GAPid = [48, 7]; [H, G] = [C8, D48]

90 0FOUND AN M_4: GAPid = [48, 8]; [H, G] = [C8, C3 : Q16]

91 0FOUND AN M_4: GAPid = [48, 9]; [H, G] = [C4 x C2, C2 x (C3 : C8)]

92 0FOUND AN M_4: GAPid = [48, 10]; [H, G] = [C4 x C2, (C3 : C8) : C2]

93 0FOUND AN M_4: GAPid = [48, 11]; [H, G] = [C4 x C2, C4 x (C3 : C4)]

94 0FOUND AN M_4: GAPid = [48, 12]; [H, G] = [C4 x C2, (C3 : C4) : C4]

95 0FOUND AN M_4: GAPid = [48, 13]; [H, G] = [C4 x C2, C12 : C4]

96 0FOUND AN M_4: GAPid = [48, 14]; [H, G] = [C4 x C2, (C12 x C2) : C2]

97 0FOUND AN M_4: GAPid = [48, 15]; [H, G] = [D8, (C3 x D8) : C2]

98 0FOUND AN M_4: GAPid = [48, 16]; [H, G] = [D8, (C3 : C8) : C2]

99 0FOUND AN M_4: GAPid = [48, 17]; [H, G] = [Q8, (C3 x Q8) : C2]

100 0FOUND AN M_4: GAPid = [48, 18]; [H, G] = [Q8, C3 : Q16]

101 0FOUND AN M_4: GAPid = [48, 19]; [H, G] = [C2 x C2 x C2, (C2 x (C3 : C4)) : C2]

102 0FOUND AN M_4: GAPid = [48, 28]; [H, G] = [Q8, C2 . S4 = SL(2,3) . C2]

103 0FOUND AN M_4: GAPid = [48, 29]; [H, G] = [Q8, GL(2,3)]

104 0FOUND AN M_4: GAPid = [48, 30]; [H, G] = [C2 x C2 x C2, A4 : C4]

105 0FOUND AN M_4: GAPid = [48, 34]; [H, G] = [C4 x C2, C2 x (C3 : Q8)]

106 0FOUND AN M_4: GAPid = [48, 35]; [H, G] = [C4 x C2, C2 x C4 x S3]

107 0FOUND AN M_4: GAPid = [48, 36]; [H, G] = [C4 x C2, C2 x D24]

108 0FOUND AN M_4: GAPid = [48, 37]; [H, G] = [C4 x C2, (C12 x C2) : C2]

109 0FOUND AN M_4: GAPid = [48, 38]; [H, G] = [D8, D8 x S3]

110 0FOUND AN M_4: GAPid = [48, 39]; [H, G] = [D8, (C2 x (C3 : C4)) : C2]

111 0FOUND AN M_4: GAPid = [48, 40]; [H, G] = [Q8, Q8 x S3]

112 0FOUND AN M_4: GAPid = [48, 41]; [H, G] = [Q8, (C4 x S3) : C2]

113 0FOUND AN M_4: GAPid = [48, 42]; [H, G] = [C2 x C2 x C2, C2 x C2 x (C3 : C4)]

114 0FOUND AN M_4: GAPid = [48, 43]; [H, G] = [C2 x C2 x C2, C2 x ((C6 x C2) : C2)]

115 0FOUND AN M_4: GAPid = [48, 48]; [H, G] = [C2 x C2 x C2, C2 x S4]

116 0FOUND AN M_4: GAPid = [48, 51]; [H, G] = [C2 x C2 x C2, C2 x C2 x C2 x S3]
 ... done (max number of meets = 4) 
116 0 Checking groups of order |G| = 49... there is/are 2 such group(s)... ... done (max number of meets = 0) 
116 0 Checking groups of order |G| = 50... there is/are 5 such group(s)... ... done (max number of meets = 0) 
gap> G
> ;
(C3 x C3) : C2
gap> H;
Group([ (1,7)(2,9)(3,8)(5,6) ])
gap> IsNormal(G,H);
false
gap> Read("~/pub/research/DeMeo/LatticeTheory/GAP/programs/findM4Upper.g");
gap> findM4Upper(1,50);
0 0 Checking groups of order |G| = 1... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 2... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 3... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 4... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 5... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 6... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 7... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 8... there is/are 5 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 9... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 10... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 11... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 12... there is/are 5 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 13... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 14... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 15... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 16... there is/are 14 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 17... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 18... there is/are 5 such group(s)...
1 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

2 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

3 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

4 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

5 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

6 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

7 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

8 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

9 0FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]
 ... done (max number of meets = 4) 
9 0 Checking groups of order |G| = 19... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 20... there is/are 5 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 21... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 22... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 23... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 24... there is/are 15 such group(s)... ... done (max number of meets = 3) 
9 0 Checking groups of order |G| = 25... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 26... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 27... there is/are 5 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 28... there is/are 4 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 29... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 30... there is/are 4 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 31... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 32... there is/are 51 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 33... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 34... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 35... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 36... there is/are 14 such group(s)...
10 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

11 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

12 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

13 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

14 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

15 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

16 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

17 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

18 0FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

19 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

20 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

21 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

22 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

23 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

24 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

25 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

26 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

27 0FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]
 ... done (max number of meets = 4) 
27 0 Checking groups of order |G| = 37... there is/are 1 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 38... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 39... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 40... there is/are 14 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 41... there is/are 1 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 42... there is/are 6 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 43... there is/are 1 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 44... there is/are 4 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 45... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 46... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 47... there is/are 1 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 48... there is/are 52 such group(s)... ... done (max number of meets = 3) 
27 0 Checking groups of order |G| = 49... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 50... there is/are 5 such group(s)... ... done (max number of meets = 0) 
gap> Index(G,H);
9
gap> Read("~/pub/research/DeMeo/LatticeTheory/GAP/programs/findM4Upper.g");
Syntax error: ) expected in /home/williamdemeo/pub/research/DeMeo/LatticeTheory/GAP/programs/findM4Upper.g line 78
                                                      "FOUND AN M_4: GAPid = [", i, ", ", j, "]; [H, G] = [", 
                                                                              ^
gap> Read("~/pub/research/DeMeo/LatticeTheory/GAP/programs/findM4Upper.g");
gap> findM4Upper(1,50);
0 0 Checking groups of order |G| = 1... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 2... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 3... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 4... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 5... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 6... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 7... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 8... there is/are 5 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 9... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 10... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 11... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 12... there is/are 5 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 13... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 14... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 15... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 16... there is/are 14 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 17... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 18... there is/are 5 such group(s)...
1 0 FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

2 0 FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

3 0 FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

4 0 FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

5 0 FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

6 0 FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

7 0 FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

8 0 FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]

9 0 FOUND AN M_4: GAPid = [18, 4]; [H, G] = [C2, (C3 x C3) : C2]
 ... done (max number of meets = 4) 
9 0 Checking groups of order |G| = 19... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 20... there is/are 5 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 21... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 22... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 23... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 24... there is/are 15 such group(s)... ... done (max number of meets = 3) 
9 0 Checking groups of order |G| = 25... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 26... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 27... there is/are 5 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 28... there is/are 4 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 29... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 30... there is/are 4 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 31... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 32... there is/are 51 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 33... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 34... there is/are 2 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 35... there is/are 1 such group(s)... ... done (max number of meets = 0) 
9 0 Checking groups of order |G| = 36... there is/are 14 such group(s)...
10 0 FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

11 0 FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

12 0 FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

13 0 FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

14 0 FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

15 0 FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

16 0 FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

17 0 FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

18 0 FOUND AN M_4: GAPid = [36, 7]; [H, G] = [C4, (C3 x C3) : C4]

19 0 FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

20 0 FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

21 0 FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

22 0 FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

23 0 FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

24 0 FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

25 0 FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

26 0 FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]

27 0 FOUND AN M_4: GAPid = [36, 13]; [H, G] = [C2 x C2, C2 x ((C3 x C3) : C2)]
 ... done (max number of meets = 4) 
27 0 Checking groups of order |G| = 37... there is/are 1 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 38... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 39... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 40... there is/are 14 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 41... there is/are 1 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 42... there is/are 6 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 43... there is/are 1 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 44... there is/are 4 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 45... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 46... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 47... there is/are 1 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 48... there is/are 52 such group(s)... ... done (max number of meets = 3) 
27 0 Checking groups of order |G| = 49... there is/are 2 such group(s)... ... done (max number of meets = 0) 
27 0 Checking groups of order |G| = 50... there is/are 5 such group(s)... ... done (max number of meets = 0) 
gap> findM4Upper(51,100);
0 0 Checking groups of order |G| = 51... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 52... there is/are 5 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 53... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 54... there is/are 15 such group(s)...
1 0 FOUND AN M_4: GAPid = [54, 7]; [H, G] = [S3, (C9 x C3) : C2]

2 0 FOUND AN M_4: GAPid = [54, 7]; [H, G] = [S3, (C9 x C3) : C2]

3 0 FOUND AN M_4: GAPid = [54, 7]; [H, G] = [S3, (C9 x C3) : C2]

4 0 FOUND AN M_4: GAPid = [54, 7]; [H, G] = [S3, (C9 x C3) : C2]

5 0 FOUND AN M_4: GAPid = [54, 7]; [H, G] = [S3, (C9 x C3) : C2]

6 0 FOUND AN M_4: GAPid = [54, 7]; [H, G] = [S3, (C9 x C3) : C2]

7 0 FOUND AN M_4: GAPid = [54, 7]; [H, G] = [S3, (C9 x C3) : C2]

8 0 FOUND AN M_4: GAPid = [54, 7]; [H, G] = [S3, (C9 x C3) : C2]

9 0 FOUND AN M_4: GAPid = [54, 7]; [H, G] = [S3, (C9 x C3) : C2]

10 0 FOUND AN M_4: GAPid = [54, 8]; [H, G] = [C6, ((C3 x C3) : C3) : C2]

11 0 FOUND AN M_4: GAPid = [54, 8]; [H, G] = [C6, ((C3 x C3) : C3) : C2]

12 0 FOUND AN M_4: GAPid = [54, 8]; [H, G] = [C6, ((C3 x C3) : C3) : C2]

13 0 FOUND AN M_4: GAPid = [54, 8]; [H, G] = [C6, ((C3 x C3) : C3) : C2]

14 0 FOUND AN M_4: GAPid = [54, 8]; [H, G] = [C6, ((C3 x C3) : C3) : C2]

15 0 FOUND AN M_4: GAPid = [54, 8]; [H, G] = [C6, ((C3 x C3) : C3) : C2]

16 0 FOUND AN M_4: GAPid = [54, 8]; [H, G] = [C6, ((C3 x C3) : C3) : C2]

17 0 FOUND AN M_4: GAPid = [54, 8]; [H, G] = [C6, ((C3 x C3) : C3) : C2]

18 0 FOUND AN M_4: GAPid = [54, 8]; [H, G] = [C6, ((C3 x C3) : C3) : C2]

19 0 FOUND AN M_4: GAPid = [54, 13]; [H, G] = [C6, C3 x ((C3 x C3) : C2)]

20 0 FOUND AN M_4: GAPid = [54, 13]; [H, G] = [C6, C3 x ((C3 x C3) : C2)]

21 0 FOUND AN M_4: GAPid = [54, 13]; [H, G] = [C6, C3 x ((C3 x C3) : C2)]

22 0 FOUND AN M_4: GAPid = [54, 13]; [H, G] = [C6, C3 x ((C3 x C3) : C2)]

23 0 FOUND AN M_4: GAPid = [54, 13]; [H, G] = [C6, C3 x ((C3 x C3) : C2)]

24 0 FOUND AN M_4: GAPid = [54, 13]; [H, G] = [C6, C3 x ((C3 x C3) : C2)]

25 0 FOUND AN M_4: GAPid = [54, 13]; [H, G] = [C6, C3 x ((C3 x C3) : C2)]

26 0 FOUND AN M_4: GAPid = [54, 13]; [H, G] = [C6, C3 x ((C3 x C3) : C2)]

27 0 FOUND AN M_4: GAPid = [54, 13]; [H, G] = [C6, C3 x ((C3 x C3) : C2)]

28 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

29 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

30 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

31 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

32 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

33 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

34 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

35 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

36 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

37 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

38 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

39 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

40 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

41 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

42 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

43 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

44 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

45 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

46 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

47 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

48 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

49 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

50 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

51 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

52 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

53 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

54 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

55 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

56 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

57 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

58 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

59 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

60 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

61 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

62 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

63 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

64 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

65 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

66 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

67 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

68 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

69 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

70 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

71 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

72 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

73 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

74 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

75 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

76 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

77 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

78 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

79 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

80 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

81 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

82 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

83 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

84 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

85 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

86 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

87 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

88 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

89 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

90 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

91 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

92 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

93 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

94 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

95 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

96 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

97 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

98 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

99 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

100 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

101 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

102 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

103 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

104 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

105 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

106 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

107 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

108 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

109 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

110 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

111 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

112 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

113 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

114 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

115 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

116 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

117 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

118 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

119 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

120 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

121 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

122 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

123 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

124 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

125 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

126 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

127 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

128 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

129 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

130 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

131 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

132 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

133 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

134 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

135 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

136 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

137 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

138 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

139 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

140 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

141 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

142 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

143 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]

144 0 FOUND AN M_4: GAPid = [54, 14]; [H, G] = [S3, (C3 x C3 x C3) : C2]
 ... done (max number of meets = 4) 
144 0 Checking groups of order |G| = 55... there is/are 2 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 56... there is/are 13 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 57... there is/are 2 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 58... there is/are 2 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 59... there is/are 1 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 60... there is/are 13 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 61... there is/are 1 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 62... there is/are 2 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 63... there is/are 4 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 64... there is/are 267 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 65... there is/are 1 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 66... there is/are 4 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 67... there is/are 1 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 68... there is/are 5 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 69... there is/are 1 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 70... there is/are 4 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 71... there is/are 1 such group(s)... ... done (max number of meets = 0) 
144 0 Checking groups of order |G| = 72... there is/are 50 such group(s)...
145 0 FOUND AN M_4: GAPid = [72, 13]; [H, G] = [C8, (C3 x C3) : C8]

146 0 FOUND AN M_4: GAPid = [72, 13]; [H, G] = [C8, (C3 x C3) : C8]

147 0 FOUND AN M_4: GAPid = [72, 13]; [H, G] = [C8, (C3 x C3) : C8]

148 0 FOUND AN M_4: GAPid = [72, 13]; [H, G] = [C8, (C3 x C3) : C8]

149 0 FOUND AN M_4: GAPid = [72, 13]; [H, G] = [C8, (C3 x C3) : C8]

150 0 FOUND AN M_4: GAPid = [72, 13]; [H, G] = [C8, (C3 x C3) : C8]

151 0 FOUND AN M_4: GAPid = [72, 13]; [H, G] = [C8, (C3 x C3) : C8]

152 0 FOUND AN M_4: GAPid = [72, 13]; [H, G] = [C8, (C3 x C3) : C8]

153 0 FOUND AN M_4: GAPid = [72, 13]; [H, G] = [C8, (C3 x C3) : C8]

154 0 FOUND AN M_4: GAPid = [72, 31]; [H, G] = [Q8, (C3 x C3) : Q8]

155 0 FOUND AN M_4: GAPid = [72, 31]; [H, G] = [Q8, (C3 x C3) : Q8]

156 0 FOUND AN M_4: GAPid = [72, 31]; [H, G] = [Q8, (C3 x C3) : Q8]

157 0 FOUND AN M_4: GAPid = [72, 31]; [H, G] = [Q8, (C3 x C3) : Q8]

158 0 FOUND AN M_4: GAPid = [72, 31]; [H, G] = [Q8, (C3 x C3) : Q8]

159 0 FOUND AN M_4: GAPid = [72, 31]; [H, G] = [Q8, (C3 x C3) : Q8]

160 0 FOUND AN M_4: GAPid = [72, 31]; [H, G] = [Q8, (C3 x C3) : Q8]

161 0 FOUND AN M_4: GAPid = [72, 31]; [H, G] = [Q8, (C3 x C3) : Q8]

162 0 FOUND AN M_4: GAPid = [72, 31]; [H, G] = [Q8, (C3 x C3) : Q8]

163 0 FOUND AN M_4: GAPid = [72, 32]; [H, G] = [C4 x C2, C4 x ((C3 x C3) : C2)]

164 0 FOUND AN M_4: GAPid = [72, 32]; [H, G] = [C4 x C2, C4 x ((C3 x C3) : C2)]

165 0 FOUND AN M_4: GAPid = [72, 32]; [H, G] = [C4 x C2, C4 x ((C3 x C3) : C2)]

166 0 FOUND AN M_4: GAPid = [72, 32]; [H, G] = [C4 x C2, C4 x ((C3 x C3) : C2)]

167 0 FOUND AN M_4: GAPid = [72, 32]; [H, G] = [C4 x C2, C4 x ((C3 x C3) : C2)]

168 0 FOUND AN M_4: GAPid = [72, 32]; [H, G] = [C4 x C2, C4 x ((C3 x C3) : C2)]

169 0 FOUND AN M_4: GAPid = [72, 32]; [H, G] = [C4 x C2, C4 x ((C3 x C3) : C2)]

170 0 FOUND AN M_4: GAPid = [72, 32]; [H, G] = [C4 x C2, C4 x ((C3 x C3) : C2)]

171 0 FOUND AN M_4: GAPid = [72, 32]; [H, G] = [C4 x C2, C4 x ((C3 x C3) : C2)]

172 0 FOUND AN M_4: GAPid = [72, 33]; [H, G] = [D8, (C12 x C3) : C2]

173 0 FOUND AN M_4: GAPid = [72, 33]; [H, G] = [D8, (C12 x C3) : C2]

174 0 FOUND AN M_4: GAPid = [72, 33]; [H, G] = [D8, (C12 x C3) : C2]

175 0 FOUND AN M_4: GAPid = [72, 33]; [H, G] = [D8, (C12 x C3) : C2]

176 0 FOUND AN M_4: GAPid = [72, 33]; [H, G] = [D8, (C12 x C3) : C2]

177 0 FOUND AN M_4: GAPid = [72, 33]; [H, G] = [D8, (C12 x C3) : C2]

178 0 FOUND AN M_4: GAPid = [72, 33]; [H, G] = [D8, (C12 x C3) : C2]

179 0 FOUND AN M_4: GAPid = [72, 33]; [H, G] = [D8, (C12 x C3) : C2]

180 0 FOUND AN M_4: GAPid = [72, 33]; [H, G] = [D8, (C12 x C3) : C2]

181 0 FOUND AN M_4: GAPid = [72, 34]; [H, G] = [C4 x C2, C2 x ((C3 x C3) : C4)]

182 0 FOUND AN M_4: GAPid = [72, 34]; [H, G] = [C4 x C2, C2 x ((C3 x C3) : C4)]

183 0 FOUND AN M_4: GAPid = [72, 34]; [H, G] = [C4 x C2, C2 x ((C3 x C3) : C4)]

184 0 FOUND AN M_4: GAPid = [72, 34]; [H, G] = [C4 x C2, C2 x ((C3 x C3) : C4)]

185 0 FOUND AN M_4: GAPid = [72, 34]; [H, G] = [C4 x C2, C2 x ((C3 x C3) : C4)]

186 0 FOUND AN M_4: GAPid = [72, 34]; [H, G] = [C4 x C2, C2 x ((C3 x C3) : C4)]

187 0 FOUND AN M_4: GAPid = [72, 34]; [H, G] = [C4 x C2, C2 x ((C3 x C3) : C4)]

188 0 FOUND AN M_4: GAPid = [72, 34]; [H, G] = [C4 x C2, C2 x ((C3 x C3) : C4)]

189 0 FOUND AN M_4: GAPid = [72, 34]; [H, G] = [C4 x C2, C2 x ((C3 x C3) : C4)]

190 0 FOUND AN M_4: GAPid = [72, 35]; [H, G] = [D8, (C6 x C6) : C2]

191 0 FOUND AN M_4: GAPid = [72, 35]; [H, G] = [D8, (C6 x C6) : C2]

192 0 FOUND AN M_4: GAPid = [72, 35]; [H, G] = [D8, (C6 x C6) : C2]

193 0 FOUND AN M_4: GAPid = [72, 35]; [H, G] = [D8, (C6 x C6) : C2]

194 0 FOUND AN M_4: GAPid = [72, 35]; [H, G] = [D8, (C6 x C6) : C2]

195 0 FOUND AN M_4: GAPid = [72, 35]; [H, G] = [D8, (C6 x C6) : C2]

196 0 FOUND AN M_4: GAPid = [72, 35]; [H, G] = [D8, (C6 x C6) : C2]

197 0 FOUND AN M_4: GAPid = [72, 35]; [H, G] = [D8, (C6 x C6) : C2]

198 0 FOUND AN M_4: GAPid = [72, 35]; [H, G] = [D8, (C6 x C6) : C2]

199 0 FOUND AN M_4: GAPid = [72, 43]; [H, G] = [D8, (C3 x A4) : C2]

200 0 FOUND AN M_4: GAPid = [72, 43]; [H, G] = [D8, (C3 x A4) : C2]

201 0 FOUND AN M_4: GAPid = [72, 43]; [H, G] = [D8, (C3 x A4) : C2]

202 0 FOUND AN M_4: GAPid = [72, 43]; [H, G] = [D8, (C3 x A4) : C2]

203 0 FOUND AN M_4: GAPid = [72, 43]; [H, G] = [D8, (C3 x A4) : C2]

204 0 FOUND AN M_4: GAPid = [72, 43]; [H, G] = [D8, (C3 x A4) : C2]

205 0 FOUND AN M_4: GAPid = [72, 43]; [H, G] = [D8, (C3 x A4) : C2]

206 0 FOUND AN M_4: GAPid = [72, 43]; [H, G] = [D8, (C3 x A4) : C2]

207 0 FOUND AN M_4: GAPid = [72, 43]; [H, G] = [D8, (C3 x A4) : C2]

208 0 FOUND AN M_4: GAPid = [72, 49]; [H, G] = [C2 x C2 x C2, C2 x C2 x ((C3 x C3) : C2)]

209 0 FOUND AN M_4: GAPid = [72, 49]; [H, G] = [C2 x C2 x C2, C2 x C2 x ((C3 x C3) : C2)]

210 0 FOUND AN M_4: GAPid = [72, 49]; [H, G] = [C2 x C2 x C2, C2 x C2 x ((C3 x C3) : C2)]

211 0 FOUND AN M_4: GAPid = [72, 49]; [H, G] = [C2 x C2 x C2, C2 x C2 x ((C3 x C3) : C2)]

212 0 FOUND AN M_4: GAPid = [72, 49]; [H, G] = [C2 x C2 x C2, C2 x C2 x ((C3 x C3) : C2)]

213 0 FOUND AN M_4: GAPid = [72, 49]; [H, G] = [C2 x C2 x C2, C2 x C2 x ((C3 x C3) : C2)]

214 0 FOUND AN M_4: GAPid = [72, 49]; [H, G] = [C2 x C2 x C2, C2 x C2 x ((C3 x C3) : C2)]

215 0 FOUND AN M_4: GAPid = [72, 49]; [H, G] = [C2 x C2 x C2, C2 x C2 x ((C3 x C3) : C2)]

216 0 FOUND AN M_4: GAPid = [72, 49]; [H, G] = [C2 x C2 x C2, C2 x C2 x ((C3 x C3) : C2)]
 ... done (max number of meets = 4) 
216 0 Checking groups of order |G| = 73... there is/are 1 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 74... there is/are 2 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 75... there is/are 3 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 76... there is/are 4 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 77... there is/are 1 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 78... there is/are 6 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 79... there is/are 1 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 80... there is/are 52 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 81... there is/are 15 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 82... there is/are 2 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 83... there is/are 1 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 84... there is/are 15 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 85... there is/are 1 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 86... there is/are 2 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 87... there is/are 1 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 88... there is/are 12 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 89... there is/are 1 such group(s)... ... done (max number of meets = 0) 
216 0 Checking groups of order |G| = 90... there is/are 10 such group(s)...
217 0 FOUND AN M_4: GAPid = [90, 8]; [H, G] = [C10, C5 x ((C3 x C3) : C2)]

218 0 FOUND AN M_4: GAPid = [90, 8]; [H, G] = [C10, C5 x ((C3 x C3) : C2)]

219 0 FOUND AN M_4: GAPid = [90, 8]; [H, G] = [C10, C5 x ((C3 x C3) : C2)]

220 0 FOUND AN M_4: GAPid = [90, 8]; [H, G] = [C10, C5 x ((C3 x C3) : C2)]

221 0 FOUND AN M_4: GAPid = [90, 8]; [H, G] = [C10, C5 x ((C3 x C3) : C2)]

222 0 FOUND AN M_4: GAPid = [90, 8]; [H, G] = [C10, C5 x ((C3 x C3) : C2)]

223 0 FOUND AN M_4: GAPid = [90, 8]; [H, G] = [C10, C5 x ((C3 x C3) : C2)]

224 0 FOUND AN M_4: GAPid = [90, 8]; [H, G] = [C10, C5 x ((C3 x C3) : C2)]

225 0 FOUND AN M_4: GAPid = [90, 8]; [H, G] = [C10, C5 x ((C3 x C3) : C2)]

226 0 FOUND AN M_4: GAPid = [90, 9]; [H, G] = [D10, (C15 x C3) : C2]

227 0 FOUND AN M_4: GAPid = [90, 9]; [H, G] = [D10, (C15 x C3) : C2]

228 0 FOUND AN M_4: GAPid = [90, 9]; [H, G] = [D10, (C15 x C3) : C2]

229 0 FOUND AN M_4: GAPid = [90, 9]; [H, G] = [D10, (C15 x C3) : C2]

230 0 FOUND AN M_4: GAPid = [90, 9]; [H, G] = [D10, (C15 x C3) : C2]

231 0 FOUND AN M_4: GAPid = [90, 9]; [H, G] = [D10, (C15 x C3) : C2]

232 0 FOUND AN M_4: GAPid = [90, 9]; [H, G] = [D10, (C15 x C3) : C2]

233 0 FOUND AN M_4: GAPid = [90, 9]; [H, G] = [D10, (C15 x C3) : C2]

234 0 FOUND AN M_4: GAPid = [90, 9]; [H, G] = [D10, (C15 x C3) : C2]
 ... done (max number of meets = 4) 
234 0 Checking groups of order |G| = 91... there is/are 1 such group(s)... ... done (max number of meets = 0) 
234 0 Checking groups of order |G| = 92... there is/are 4 such group(s)... ... done (max number of meets = 0) 
234 0 Checking groups of order |G| = 93... there is/are 2 such group(s)... ... done (max number of meets = 0) 
234 0 Checking groups of order |G| = 94... there is/are 2 such group(s)... ... done (max number of meets = 0) 
234 0 Checking groups of order |G| = 95... there is/are 1 such group(s)... ... done (max number of meets = 0) 
234 0 Checking groups of order |G| = 96... there is/are 231 such group(s)... ... done (max number of meets = 3) 
234 0 Checking groups of order |G| = 97... there is/are 1 such group(s)... ... done (max number of meets = 0) 
234 0 Checking groups of order |G| = 98... there is/are 5 such group(s)... ... done (max number of meets = 0) 
234 0 Checking groups of order |G| = 99... there is/are 2 such group(s)... ... done (max number of meets = 0) 
234 0 Checking groups of order |G| = 100... there is/are 16 such group(s)... ... done (max number of meets = 0) 
gap> Read("~/pub/research/DeMeo/LatticeTheory/GAP/programs/findM4Upper.g");
gap> findM4Upper(101,200);
0 0 Checking groups of order |G| = 101... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 102... there is/are 4 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 103... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 104... there is/are 14 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 105... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 106... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 107... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 108... there is/are 45 such group(s)...
1 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

2 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

3 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

4 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

5 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

6 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

7 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

8 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

9 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

10 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

11 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

12 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

13 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

14 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

15 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

16 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

17 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

18 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

19 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

20 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

21 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

22 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

23 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

24 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

25 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

26 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

27 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

28 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

29 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

30 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

31 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

32 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

33 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

34 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

35 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

36 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

37 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

38 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

39 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

40 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

41 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

42 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

43 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

44 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

45 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

46 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

47 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

48 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

49 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

50 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

51 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

52 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

53 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

54 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

55 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

56 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

57 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

58 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

59 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

60 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

61 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

62 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

63 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

64 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

65 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

66 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

67 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

68 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

69 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

70 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

71 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

72 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

73 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

74 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

75 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

76 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

77 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

78 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

79 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

80 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

81 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

82 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

83 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

84 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

85 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

86 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

87 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

88 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

89 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

90 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

91 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

92 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

93 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

94 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

95 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

96 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

97 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

98 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

99 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

100 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

101 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

102 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

103 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

104 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

105 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

106 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

107 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

108 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

109 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

110 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

111 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

112 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

113 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

114 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

115 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

116 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

117 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

118 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

119 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

120 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

121 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

122 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

123 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

124 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

125 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

126 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

127 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

128 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

129 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

130 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

131 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

132 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

133 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

134 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

135 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

136 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

137 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

138 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

139 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

140 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

141 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

142 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

143 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

144 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

145 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

146 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

147 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

148 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

149 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

150 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

151 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

152 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

153 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

154 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

155 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

156 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

157 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

158 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

159 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

160 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

161 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

162 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

163 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

164 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

165 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

166 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

167 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

168 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

169 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

170 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

171 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

172 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

173 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

174 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

175 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

176 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

177 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

178 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

179 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

180 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

181 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

182 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

183 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

184 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

185 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

186 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

187 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

188 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

189 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

190 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

191 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

192 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

193 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

194 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

195 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

196 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

197 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

198 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

199 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

200 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

201 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

202 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

203 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

204 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

205 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

206 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

207 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

208 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

209 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

210 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

211 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

212 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

213 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

214 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

215 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

216 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

217 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

218 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

219 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

220 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

221 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

222 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

223 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

224 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

225 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

226 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

227 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

228 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

229 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

230 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

231 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

232 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

233 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

234 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

235 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

236 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

237 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

238 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

239 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

240 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

241 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

242 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

243 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

244 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

245 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

246 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

247 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

248 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

249 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

250 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

251 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

252 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

253 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

254 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

255 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

256 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

257 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

258 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

259 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

260 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

261 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

262 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

263 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

264 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

265 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

266 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

267 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

268 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

269 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

270 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

271 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

272 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

273 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

274 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

275 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

276 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

277 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

278 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

279 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

280 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

281 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

282 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

283 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

284 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

285 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

286 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

287 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

288 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

289 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

290 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

291 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

292 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

293 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

294 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

295 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

296 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

297 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9
 ... done (max number of meets = 4) 
297 0 Checking groups of order |G| = 109... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 110... there is/are 6 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 111... there is/are 2 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 112... there is/are 43 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 113... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 114... there is/are 6 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 115... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 116... there is/are 5 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 117... there is/are 4 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 118... there is/are 2 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 119... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 120... there is/are 47 such group(s)... ... done (max number of meets = 3) 
297 0 Checking groups of order |G| = 121... there is/are 2 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 122... there is/are 2 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 123... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 124... there is/are 4 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 125... there is/are 5 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 126... there is/are 16 such group(s)...
298 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

299 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

300 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

301 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

302 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

303 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

304 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

305 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

306 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

307 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

308 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

309 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

310 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

311 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

312 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

313 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

314 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

315 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9
 ... done (max number of meets = 4) 
315 0 Checking groups of order |G| = 127... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 128... there is/are 2328 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 129... there is/are 2 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 130... there is/are 4 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 131... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 132... there is/are 10 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 133... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 134... there is/are 2 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 135... there is/are 5 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 136... there is/are 15 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 137... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 138... there is/are 4 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 139... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 140... there is/are 11 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 141... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 142... there is/are 2 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 143... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 144... there is/are 197 such group(s)...
316 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

317 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

318 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

319 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

320 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

321 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

322 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

323 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

324 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

325 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

326 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

327 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

328 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

329 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

330 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

331 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

332 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

333 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

334 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

335 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

336 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

337 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

338 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

339 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

340 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

341 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

342 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

343 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

344 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

345 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

346 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

347 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

348 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

349 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

350 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

351 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

352 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

353 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

354 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

355 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

356 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

357 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

358 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

359 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

360 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

361 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

362 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

363 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

364 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

365 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

366 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

367 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

368 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

369 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

370 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

371 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

372 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

373 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

374 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

375 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

376 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

377 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

378 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

379 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

380 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

381 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

382 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

383 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

384 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

385 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

386 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

387 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

388 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

389 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

390 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

391 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

392 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

393 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

394 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

395 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

396 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

397 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

398 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

399 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

400 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

401 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

402 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

403 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

404 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

405 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

406 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

407 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

408 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

409 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

410 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

411 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

412 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

413 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

414 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

415 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

416 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

417 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

418 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

419 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

420 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

421 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

422 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

423 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

424 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

425 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

426 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

427 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

428 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

429 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

430 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

431 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

432 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

433 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

434 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

435 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

436 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

437 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

438 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

439 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

440 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

441 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

442 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

443 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

444 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

445 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

446 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

447 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

448 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

449 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

450 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

451 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

452 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

453 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

454 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

455 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

456 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

457 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

458 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

459 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

460 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

461 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

462 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

463 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

464 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

465 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

466 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

467 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

468 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

469 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

470 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

471 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

472 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

473 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

474 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

475 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

476 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

477 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

478 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

479 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

480 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

481 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

482 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

483 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

484 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

485 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

486 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

487 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

488 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

489 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

490 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

491 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

492 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

493 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

494 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

495 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

496 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

497 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

498 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

499 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

500 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

501 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

502 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

503 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

504 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

505 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

506 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

507 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

508 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

509 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

510 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

511 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

512 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

513 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

514 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

515 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

516 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

517 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

518 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

519 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

520 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

521 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

522 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

523 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

524 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

525 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

526 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

527 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

528 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

529 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

530 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

531 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

532 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

533 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

534 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

535 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

536 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

537 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

538 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

539 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

540 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

541 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

542 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

543 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

544 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

545 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

546 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

547 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

548 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

549 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

550 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

551 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

552 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

553 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

554 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

555 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

556 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

557 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

558 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

559 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

560 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

561 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

562 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

563 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

564 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

565 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

566 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

567 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

568 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

569 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

570 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

571 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

572 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

573 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

574 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

575 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

576 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

577 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

578 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

579 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

580 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

581 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

582 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

583 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

584 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

585 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

586 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

587 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

588 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

589 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

590 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

591 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

592 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

593 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

594 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

595 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

596 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

597 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

598 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

599 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

600 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

601 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

602 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

603 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9
 ... done (max number of meets = 4) 
603 0 Checking groups of order |G| = 145... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 146... there is/are 2 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 147... there is/are 6 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 148... there is/are 5 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 149... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 150... there is/are 13 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 151... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 152... there is/are 12 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 153... there is/are 2 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 154... there is/are 4 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 155... there is/are 2 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 156... there is/are 18 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 157... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 158... there is/are 2 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 159... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 160... there is/are 238 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 161... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 162... there is/are 55 such group(s)...
604 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

605 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

606 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

607 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

608 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

609 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

610 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

611 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

612 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

613 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

614 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

615 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

616 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

617 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

618 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

619 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

620 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

621 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

622 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

623 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

624 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

625 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

626 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

627 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

628 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

629 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

630 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

631 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

632 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

633 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

634 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

635 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

636 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

637 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

638 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

639 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

640 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

641 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

642 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

643 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

644 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

645 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

646 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

647 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

648 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

649 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

650 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

651 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

652 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

653 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

654 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

655 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

656 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

657 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

658 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

659 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

660 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

661 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

662 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

663 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

664 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

665 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

666 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

667 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

668 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

669 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

670 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

671 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

672 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

673 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

674 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

675 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

676 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

677 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

678 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

679 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

680 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

681 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

682 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

683 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

684 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

685 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

686 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

687 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

688 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

689 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

690 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

691 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

692 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

693 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

694 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

695 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

696 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

697 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

698 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

699 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

700 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

701 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

702 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

703 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

704 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

705 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

706 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

707 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

708 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

709 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

710 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

711 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

712 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

713 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

714 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

715 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

716 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

717 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

718 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

719 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

720 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

721 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

722 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

723 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

724 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

725 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

726 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

727 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

728 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

729 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

730 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

731 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

732 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

733 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

734 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

735 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

736 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

737 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

738 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

739 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

740 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

741 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

742 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

743 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

744 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

745 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

746 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

747 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

748 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

749 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

750 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

751 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

752 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

753 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

754 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

755 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

756 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

757 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

758 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

759 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

760 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

761 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

762 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

763 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

764 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

765 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

766 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

767 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

768 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

769 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

770 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

771 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

772 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

773 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

774 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

775 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

776 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

777 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

778 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

779 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

780 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

781 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

782 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

783 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

784 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

785 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

786 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

787 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

788 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

789 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

790 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

791 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

792 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

793 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

794 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

795 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

796 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

797 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

798 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

799 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

800 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

801 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

802 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

803 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

804 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

805 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

806 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

807 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

808 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

809 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

810 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

811 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

812 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

813 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

814 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

815 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

816 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

817 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

818 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

819 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

820 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

821 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

822 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

823 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

824 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

825 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

826 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

827 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

828 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

829 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

830 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

831 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

832 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

833 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

834 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

835 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

836 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

837 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

838 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

839 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

840 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

841 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

842 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

843 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

844 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

845 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

846 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

847 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

848 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

849 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

850 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

851 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

852 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

853 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

854 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

855 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

856 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

857 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

858 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

859 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

860 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

861 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

862 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

863 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

864 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

865 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

866 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

867 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

868 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

869 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

870 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

871 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

872 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

873 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

874 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

875 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

876 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

877 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

878 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

879 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

880 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

881 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

882 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

883 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

884 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

885 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

886 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

887 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

888 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

889 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

890 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

891 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

892 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

893 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

894 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

895 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

896 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

897 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

898 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

899 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

900 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

901 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

902 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

903 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

904 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

905 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

906 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

907 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

908 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

909 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

910 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

911 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

912 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

913 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

914 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

915 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

916 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

917 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

918 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

919 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

920 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

921 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

922 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

923 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

924 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

925 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

926 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

927 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

928 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

929 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

930 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

931 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

932 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

933 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

934 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

935 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

936 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

937 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

938 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

939 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

940 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

941 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

942 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

943 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

944 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

945 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

946 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

947 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

948 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

949 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

950 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

951 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

952 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

953 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

954 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

955 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

956 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

957 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

958 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

959 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

960 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

961 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

962 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

963 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

964 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

965 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

966 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

967 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

968 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

969 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

970 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

971 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

972 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

973 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

974 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

975 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

976 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

977 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

978 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

979 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

980 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

981 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

982 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

983 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

984 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

985 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

986 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

987 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

988 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

989 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

990 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

991 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

992 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

993 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

994 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

995 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

996 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

997 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

998 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

999 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1000 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1001 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1002 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1003 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1004 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1005 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1006 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1007 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1008 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1009 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1010 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1011 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1012 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1013 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1014 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1015 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1016 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1017 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1018 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1019 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1020 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1021 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1022 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1023 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1024 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1025 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1026 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1027 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1028 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1029 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1030 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1031 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1032 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1033 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1034 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1035 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1036 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1037 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1038 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1039 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1040 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1041 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1042 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1043 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1044 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1045 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1046 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1047 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1048 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1049 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1050 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1051 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1052 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1053 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1054 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1055 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1056 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1057 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1058 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1059 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1060 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1061 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1062 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1063 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1064 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1065 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1066 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1067 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1068 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1069 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1070 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1071 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1072 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1073 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1074 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1075 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1076 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1077 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1078 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1079 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1080 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1081 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1082 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1083 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1084 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1085 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1086 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1087 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1088 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1089 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1090 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1091 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1092 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1093 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1094 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1095 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1096 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1097 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1098 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1099 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1100 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1101 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1102 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1103 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1104 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1105 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1106 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1107 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1108 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1109 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1110 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1111 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1112 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1113 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1114 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1115 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1116 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1117 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1118 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1119 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1120 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1121 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1122 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1123 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1124 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1125 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1126 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1127 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1128 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1129 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1130 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1131 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1132 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1133 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1134 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1135 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1136 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1137 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1138 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1139 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1140 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1141 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1142 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1143 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1144 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1145 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1146 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1147 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1148 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1149 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1150 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1151 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1152 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1153 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1154 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1155 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1156 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1157 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1158 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1159 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1160 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1161 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1162 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1163 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1164 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1165 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1166 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1167 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1168 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1169 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1170 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1171 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1172 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1173 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1174 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1175 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1176 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1177 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1178 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1179 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1180 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1181 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1182 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1183 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1184 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1185 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1186 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1187 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1188 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1189 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1190 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1191 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1192 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1193 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1194 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1195 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1196 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1197 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1198 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1199 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1200 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1201 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1202 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1203 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1204 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1205 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1206 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1207 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1208 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1209 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1210 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1211 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1212 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1213 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1214 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1215 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1216 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1217 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1218 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1219 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1220 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1221 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1222 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1223 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1224 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1225 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1226 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1227 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1228 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1229 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1230 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1231 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1232 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1233 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1234 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1235 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1236 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1237 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1238 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1239 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1240 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1241 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1242 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1243 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1244 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1245 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1246 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1247 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1248 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1249 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1250 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1251 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1252 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1253 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1254 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1255 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1256 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1257 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1258 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1259 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1260 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1261 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1262 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1263 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1264 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1265 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1266 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1267 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1268 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1269 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1270 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1271 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1272 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1273 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1274 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1275 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1276 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1277 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1278 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1279 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1280 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1281 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1282 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1283 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1284 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1285 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1286 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1287 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1288 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1289 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1290 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1291 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1292 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1293 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1294 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1295 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1296 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1297 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1298 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1299 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1300 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1301 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1302 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1303 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1304 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1305 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1306 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1307 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1308 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1309 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1310 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1311 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1312 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1313 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1314 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1315 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1316 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1317 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1318 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1319 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1320 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1321 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1322 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1323 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1324 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1325 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1326 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1327 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1328 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1329 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1330 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1331 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1332 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1333 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1334 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1335 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1336 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1337 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1338 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1339 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1340 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1341 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1342 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1343 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1344 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1345 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1346 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1347 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1348 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1349 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1350 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1351 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1352 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1353 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1354 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1355 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1356 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1357 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1358 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1359 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1360 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1361 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1362 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1363 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1364 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1365 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1366 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1367 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1368 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1369 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1370 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1371 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1372 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1373 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1374 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1375 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1376 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1377 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1378 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1379 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1380 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1381 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1382 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1383 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1384 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1385 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1386 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1387 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1388 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1389 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1390 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1391 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1392 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1393 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1394 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1395 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1396 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1397 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1398 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1399 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1400 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1401 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1402 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1403 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1404 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1405 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1406 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1407 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1408 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1409 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1410 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1411 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1412 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1413 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1414 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1415 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1416 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1417 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1418 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1419 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1420 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1421 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1422 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1423 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1424 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1425 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1426 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1427 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1428 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1429 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1430 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1431 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1432 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1433 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1434 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1435 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1436 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1437 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1438 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1439 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1440 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1441 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1442 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1443 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1444 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1445 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1446 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1447 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1448 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1449 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1450 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1451 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1452 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1453 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1454 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1455 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1456 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1457 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1458 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1459 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1460 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1461 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1462 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1463 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1464 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1465 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1466 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1467 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1468 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1469 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1470 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1471 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1472 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1473 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1474 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1475 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1476 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1477 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1478 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1479 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1480 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1481 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1482 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1483 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1484 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1485 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1486 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1487 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1488 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1489 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1490 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1491 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1492 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1493 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1494 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1495 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1496 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1497 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1498 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1499 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1500 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1501 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1502 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1503 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1504 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1505 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1506 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1507 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1508 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1509 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1510 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1511 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1512 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1513 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1514 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1515 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1516 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1517 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1518 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1519 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1520 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1521 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1522 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1523 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1524 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1525 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1526 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1527 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1528 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1529 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1530 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1531 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1532 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1533 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1534 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1535 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1536 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1537 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1538 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1539 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1540 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1541 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1542 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1543 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1544 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1545 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1546 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1547 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1548 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1549 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1550 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1551 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1552 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1553 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1554 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1555 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1556 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1557 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1558 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1559 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1560 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1561 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1562 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1563 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1564 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1565 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1566 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1567 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1568 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1569 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1570 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1571 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1572 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1573 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1574 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1575 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1576 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1577 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1578 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1579 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1580 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1581 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1582 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1583 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1584 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1585 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1586 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1587 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1588 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1589 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1590 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1591 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1592 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1593 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1594 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1595 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1596 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1597 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1598 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1599 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1600 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1601 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1602 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1603 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1604 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1605 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1606 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1607 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1608 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1609 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1610 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1611 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1612 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1613 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1614 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1615 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1616 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1617 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1618 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1619 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1620 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1621 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1622 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1623 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1624 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1625 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1626 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1627 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1628 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1629 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1630 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1631 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1632 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1633 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1634 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1635 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1636 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1637 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1638 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1639 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1640 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1641 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1642 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1643 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1644 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1645 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1646 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1647 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1648 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1649 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1650 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1651 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1652 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1653 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1654 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1655 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1656 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1657 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1658 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1659 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1660 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1661 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1662 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1663 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1664 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1665 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1666 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1667 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1668 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1669 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1670 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1671 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1672 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1673 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1674 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1675 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1676 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1677 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1678 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1679 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1680 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1681 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1682 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1683 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1684 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1685 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1686 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1687 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1688 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1689 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1690 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1691 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1692 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1693 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1694 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1695 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1696 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1697 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1698 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1699 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1700 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1701 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1702 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1703 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1704 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1705 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1706 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1707 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1708 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1709 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1710 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1711 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1712 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1713 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1714 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1715 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1716 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1717 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1718 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1719 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1720 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1721 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1722 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1723 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1724 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1725 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1726 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1727 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1728 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1729 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1730 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1731 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1732 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1733 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1734 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1735 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1736 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1737 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1738 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1739 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1740 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1741 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1742 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1743 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1744 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1745 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1746 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1747 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1748 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1749 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1750 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1751 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1752 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1753 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1754 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1755 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1756 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1757 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1758 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1759 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1760 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1761 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1762 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1763 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1764 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1765 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1766 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1767 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1768 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1769 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1770 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1771 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1772 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1773 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1774 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1775 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1776 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1777 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1778 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1779 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1780 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1781 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1782 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1783 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1784 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1785 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1786 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1787 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1788 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1789 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1790 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1791 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1792 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1793 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1794 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1795 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1796 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1797 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1798 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1799 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1800 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1801 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1802 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1803 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1804 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1805 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1806 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1807 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1808 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1809 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1810 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1811 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1812 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1813 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1814 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1815 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1816 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1817 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1818 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1819 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1820 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1821 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1822 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1823 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1824 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1825 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1826 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1827 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1828 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1829 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1830 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1831 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1832 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1833 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1834 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1835 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1836 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1837 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1838 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1839 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1840 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1841 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1842 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1843 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1844 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1845 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1846 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1847 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1848 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1849 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1850 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1851 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1852 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1853 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1854 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1855 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1856 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1857 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1858 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1859 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1860 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1861 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1862 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1863 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1864 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1865 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1866 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1867 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1868 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1869 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1870 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1871 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1872 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1873 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1874 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1875 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1876 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1877 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1878 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1879 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1880 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1881 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1882 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1883 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1884 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1885 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1886 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1887 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1888 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1889 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1890 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1891 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1892 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1893 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1894 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1895 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1896 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1897 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1898 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1899 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1900 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1901 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1902 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1903 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1904 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1905 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1906 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1907 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1908 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1909 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1910 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1911 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1912 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1913 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1914 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1915 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1916 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1917 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1918 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1919 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1920 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1921 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1922 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1923 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1924 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1925 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1926 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1927 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1928 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1929 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1930 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1931 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1932 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1933 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1934 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1935 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1936 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1937 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1938 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1939 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1940 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1941 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1942 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1943 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1944 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1945 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1946 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1947 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1948 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1949 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1950 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1951 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1952 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1953 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1954 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1955 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1956 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1957 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1958 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1959 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1960 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1961 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1962 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1963 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1964 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1965 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1966 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1967 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1968 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1969 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1970 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1971 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1972 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1973 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1974 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1975 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1976 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1977 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1978 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1979 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1980 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1981 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1982 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1983 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1984 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1985 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1986 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1987 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1988 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1989 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1990 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1991 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1992 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1993 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1994 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1995 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1996 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1997 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1998 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1999 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2000 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2001 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2002 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2003 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2004 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2005 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2006 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2007 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2008 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2009 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2010 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2011 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2012 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2013 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2014 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2015 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2016 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2017 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2018 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2019 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2020 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2021 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2022 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2023 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2024 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2025 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2026 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2027 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2028 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2029 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2030 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2031 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2032 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2033 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2034 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2035 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2036 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2037 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2038 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2039 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2040 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2041 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2042 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2043 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2044 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2045 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2046 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2047 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2048 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2049 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2050 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2051 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2052 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2053 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2054 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2055 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2056 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2057 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2058 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2059 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2060 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2061 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2062 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2063 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2064 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2065 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2066 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2067 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2068 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2069 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2070 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2071 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2072 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2073 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2074 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2075 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2076 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2077 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2078 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2079 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2080 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2081 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2082 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2083 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2084 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2085 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2086 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2087 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2088 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2089 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2090 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2091 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2092 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2093 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2094 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2095 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2096 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2097 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2098 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2099 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2100 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2101 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2102 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2103 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2104 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2105 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2106 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2107 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2108 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2109 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2110 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2111 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2112 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2113 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2114 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2115 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2116 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2117 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2118 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2119 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2120 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2121 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2122 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2123 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2124 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2125 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2126 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2127 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2128 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2129 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2130 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2131 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2132 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2133 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2134 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2135 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2136 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2137 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2138 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2139 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2140 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2141 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2142 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2143 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2144 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2145 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2146 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2147 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2148 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2149 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2150 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2151 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2152 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2153 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2154 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2155 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2156 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2157 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2158 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2159 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2160 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2161 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2162 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2163 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2164 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2165 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2166 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2167 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2168 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2169 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2170 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2171 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2172 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2173 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2174 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2175 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2176 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2177 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2178 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2179 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2180 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2181 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2182 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2183 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2184 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2185 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2186 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2187 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2188 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2189 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2190 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2191 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2192 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2193 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2194 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2195 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2196 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2197 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2198 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2199 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2200 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2201 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2202 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2203 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2204 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2205 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2206 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2207 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2208 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2209 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2210 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2211 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2212 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2213 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2214 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2215 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2216 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2217 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2218 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2219 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2220 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2221 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2222 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2223 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2224 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2225 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2226 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2227 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2228 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2229 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2230 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2231 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2232 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2233 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2234 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2235 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2236 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2237 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2238 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2239 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2240 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2241 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2242 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2243 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2244 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2245 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2246 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2247 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2248 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2249 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2250 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2251 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2252 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2253 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2254 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2255 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2256 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2257 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2258 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2259 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9
 ... done (max number of meets = 4) 
2259 0 Checking groups of order |G| = 163... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 164... there is/are 5 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 165... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 166... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 167... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 168... there is/are 57 such group(s)... ... done (max number of meets = 3) 
2259 0 Checking groups of order |G| = 169... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 170... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 171... there is/are 5 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 172... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 173... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 174... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 175... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 176... there is/are 42 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 177... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 178... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 179... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 180... there is/are 37 such group(s)...
2260 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2261 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2262 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2263 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2264 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2265 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2266 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2267 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2268 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2269 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2270 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2271 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2272 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2273 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2274 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2275 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2276 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2277 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2278 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2279 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2280 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2281 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2282 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2283 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2284 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2285 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2286 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2287 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2288 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2289 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2290 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2291 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2292 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2293 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2294 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2295 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2296 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2297 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2298 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2299 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2300 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2301 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2302 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2303 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2304 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2305 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2306 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2307 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2308 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2309 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2310 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2311 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2312 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2313 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9
 ... done (max number of meets = 4) 
2313 0 Checking groups of order |G| = 181... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 182... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 183... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 184... there is/are 12 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 185... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 186... there is/are 6 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 187... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 188... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 189... there is/are 13 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 190... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 191... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 192... there is/are 1543 such group(s)... ... done (max number of meets = 3) 
2313 0 Checking groups of order |G| = 193... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 194... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 195... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 196... there is/are 12 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 197... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 198... there is/are 10 such group(s)...
2314 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2315 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2316 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2317 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2318 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2319 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2320 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2321 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2322 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2323 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2324 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2325 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2326 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2327 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2328 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2329 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2330 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2331 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9
 ... done (max number of meets = 4) 
2331 0 Checking groups of order |G| = 199... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2331 0 Checking groups of order |G| = 200... there is/are 52 such group(s)... ... done (max number of meets = 0) 
gap> Read("~/pub/research/DeMeo/LatticeTheory/GAP/programs/findM4Upper.g");
gap> findM4Upper(101,200);
0 0 Checking groups of order |G| = 101... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 102... there is/are 4 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 103... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 104... there is/are 14 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 105... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 106... there is/are 2 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 107... there is/are 1 such group(s)... ... done (max number of meets = 0) 
0 0 Checking groups of order |G| = 108... there is/are 45 such group(s)...
1 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

2 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

3 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

4 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

5 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

6 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

7 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

8 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

9 0 FOUND AN M_4: GAPid = [108, 10]; [H, G] = [C3 : C4, (C9 x C3) : C4];  [G:H] = 9

10 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

11 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

12 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

13 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

14 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

15 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

16 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

17 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

18 0 FOUND AN M_4: GAPid = [108, 11]; [H, G] = [C12, ((C3 x C3) : C3) : C4];  [G:H] = 9

19 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

20 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

21 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

22 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

23 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

24 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

25 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

26 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

27 0 FOUND AN M_4: GAPid = [108, 27]; [H, G] = [D12, C2 x ((C9 x C3) : C2)];  [G:H] = 9

28 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

29 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

30 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

31 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

32 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

33 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

34 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

35 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

36 0 FOUND AN M_4: GAPid = [108, 28]; [H, G] = [C6 x C2, C2 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

37 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

38 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

39 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

40 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

41 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

42 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

43 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

44 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

45 0 FOUND AN M_4: GAPid = [108, 33]; [H, G] = [C12, C3 x ((C3 x C3) : C4)];  [G:H] = 9

46 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

47 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

48 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

49 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

50 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

51 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

52 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

53 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

54 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

55 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

56 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

57 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

58 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

59 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

60 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

61 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

62 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

63 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

64 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

65 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

66 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

67 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

68 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

69 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

70 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

71 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

72 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

73 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

74 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

75 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

76 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

77 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

78 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

79 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

80 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

81 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

82 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

83 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

84 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

85 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

86 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

87 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

88 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

89 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

90 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

91 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

92 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

93 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

94 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

95 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

96 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

97 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

98 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

99 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

100 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

101 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

102 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

103 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

104 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

105 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

106 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

107 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

108 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

109 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

110 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

111 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

112 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

113 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

114 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

115 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

116 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

117 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

118 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

119 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

120 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

121 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

122 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

123 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

124 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

125 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

126 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

127 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

128 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

129 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

130 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

131 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

132 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

133 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

134 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

135 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

136 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

137 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

138 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

139 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

140 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

141 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

142 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

143 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

144 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

145 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

146 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

147 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

148 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

149 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

150 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

151 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

152 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

153 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

154 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

155 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

156 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

157 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

158 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

159 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

160 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

161 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

162 0 FOUND AN M_4: GAPid = [108, 34]; [H, G] = [C3 : C4, (C3 x C3 x C3) : C4];  [G:H] = 9

163 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

164 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

165 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

166 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

167 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

168 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

169 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

170 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

171 0 FOUND AN M_4: GAPid = [108, 39]; [H, G] = [D12, ((C3 x C3) : C2) x S3];  [G:H] = 9

172 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

173 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

174 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

175 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

176 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

177 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

178 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

179 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

180 0 FOUND AN M_4: GAPid = [108, 43]; [H, G] = [C6 x C2, C6 x ((C3 x C3) : C2)];  [G:H] = 9

181 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

182 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

183 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

184 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

185 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

186 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

187 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

188 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

189 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

190 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

191 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

192 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

193 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

194 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

195 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

196 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

197 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

198 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

199 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

200 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

201 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

202 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

203 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

204 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

205 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

206 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

207 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

208 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

209 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

210 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

211 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

212 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

213 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

214 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

215 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

216 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

217 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

218 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

219 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

220 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

221 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

222 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

223 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

224 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

225 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

226 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

227 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

228 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

229 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

230 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

231 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

232 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

233 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

234 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

235 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

236 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

237 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

238 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

239 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

240 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

241 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

242 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

243 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

244 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

245 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

246 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

247 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

248 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

249 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

250 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

251 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

252 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

253 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

254 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

255 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

256 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

257 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

258 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

259 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

260 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

261 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

262 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

263 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

264 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

265 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

266 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

267 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

268 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

269 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

270 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

271 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

272 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

273 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

274 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

275 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

276 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

277 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

278 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

279 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

280 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

281 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

282 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

283 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

284 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

285 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

286 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

287 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

288 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

289 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

290 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

291 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

292 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

293 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

294 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

295 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

296 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

297 0 FOUND AN M_4: GAPid = [108, 44]; [H, G] = [D12, C2 x ((C3 x C3 x C3) : C2)];  [G:H] = 9
 ... done (max number of meets = 4) 
297 0 Checking groups of order |G| = 109... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 110... there is/are 6 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 111... there is/are 2 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 112... there is/are 43 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 113... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 114... there is/are 6 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 115... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 116... there is/are 5 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 117... there is/are 4 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 118... there is/are 2 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 119... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 120... there is/are 47 such group(s)... ... done (max number of meets = 3) 
297 0 Checking groups of order |G| = 121... there is/are 2 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 122... there is/are 2 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 123... there is/are 1 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 124... there is/are 4 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 125... there is/are 5 such group(s)... ... done (max number of meets = 0) 
297 0 Checking groups of order |G| = 126... there is/are 16 such group(s)...
298 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

299 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

300 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

301 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

302 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

303 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

304 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

305 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

306 0 FOUND AN M_4: GAPid = [126, 14]; [H, G] = [C14, C7 x ((C3 x C3) : C2)];  [G:H] = 9

307 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

308 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

309 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

310 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

311 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

312 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

313 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

314 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9

315 0 FOUND AN M_4: GAPid = [126, 15]; [H, G] = [D14, (C21 x C3) : C2];  [G:H] = 9
 ... done (max number of meets = 4) 
315 0 Checking groups of order |G| = 127... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 128... there is/are 2328 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 129... there is/are 2 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 130... there is/are 4 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 131... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 132... there is/are 10 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 133... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 134... there is/are 2 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 135... there is/are 5 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 136... there is/are 15 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 137... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 138... there is/are 4 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 139... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 140... there is/are 11 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 141... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 142... there is/are 2 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 143... there is/are 1 such group(s)... ... done (max number of meets = 0) 
315 0 Checking groups of order |G| = 144... there is/are 197 such group(s)...
316 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

317 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

318 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

319 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

320 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

321 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

322 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

323 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

324 0 FOUND AN M_4: GAPid = [144, 29]; [H, G] = [C16, (C3 x C3) : C16];  [G:H] = 9

325 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

326 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

327 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

328 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

329 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

330 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

331 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

332 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

333 0 FOUND AN M_4: GAPid = [144, 85]; [H, G] = [C8 x C2, C8 x ((C3 x C3) : C2)];  [G:H] = 9

334 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

335 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

336 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

337 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

338 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

339 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

340 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

341 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

342 0 FOUND AN M_4: GAPid = [144, 86]; [H, G] = [C8 : C2, (C24 x C3) : C2];  [G:H] = 9

343 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

344 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

345 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

346 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

347 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

348 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

349 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

350 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

351 0 FOUND AN M_4: GAPid = [144, 87]; [H, G] = [QD16, (C24 x C3) : C2];  [G:H] = 9

352 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

353 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

354 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

355 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

356 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

357 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

358 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

359 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

360 0 FOUND AN M_4: GAPid = [144, 88]; [H, G] = [D16, (C24 x C3) : C2];  [G:H] = 9

361 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

362 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

363 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

364 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

365 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

366 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

367 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

368 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

369 0 FOUND AN M_4: GAPid = [144, 89]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

370 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

371 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

372 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

373 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

374 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

375 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

376 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

377 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

378 0 FOUND AN M_4: GAPid = [144, 90]; [H, G] = [C8 x C2, C2 x ((C3 x C3) : C8)];  [G:H] = 9

379 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

380 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

381 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

382 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

383 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

384 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

385 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

386 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

387 0 FOUND AN M_4: GAPid = [144, 91]; [H, G] = [C8 : C2, ((C3 x C3) : C8) : C2];  [G:H] = 9

388 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

389 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

390 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

391 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

392 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

393 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

394 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

395 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

396 0 FOUND AN M_4: GAPid = [144, 92]; [H, G] = [C4 x C4, C4 x ((C3 x C3) : C4)];  [G:H] = 9

397 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

398 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

399 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

400 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

401 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

402 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

403 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

404 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

405 0 FOUND AN M_4: GAPid = [144, 93]; [H, G] = [C4 : C4, ((C3 x C3) : C4) : C4];  [G:H] = 9

406 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

407 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

408 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

409 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

410 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

411 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

412 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

413 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

414 0 FOUND AN M_4: GAPid = [144, 94]; [H, G] = [C4 : C4, (C12 x C3) : C4];  [G:H] = 9

415 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

416 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

417 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

418 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

419 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

420 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

421 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

422 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

423 0 FOUND AN M_4: GAPid = [144, 95]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

424 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

425 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

426 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

427 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

428 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

429 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

430 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

431 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

432 0 FOUND AN M_4: GAPid = [144, 96]; [H, G] = [D16, (C3 x C3 x D8) : C2];  [G:H] = 9

433 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

434 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

435 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

436 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

437 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

438 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

439 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

440 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

441 0 FOUND AN M_4: GAPid = [144, 97]; [H, G] = [QD16, ((C3 x C3) : Q8) : C2];  [G:H] = 9

442 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

443 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

444 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

445 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

446 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

447 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

448 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

449 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

450 0 FOUND AN M_4: GAPid = [144, 98]; [H, G] = [QD16, (C3 x C3 x Q8) : C2];  [G:H] = 9

451 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

452 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

453 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

454 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

455 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

456 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

457 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

458 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

459 0 FOUND AN M_4: GAPid = [144, 99]; [H, G] = [Q16, (C3 x C3) : Q16];  [G:H] = 9

460 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

461 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

462 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

463 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

464 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

465 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

466 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

467 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

468 0 FOUND AN M_4: GAPid = [144, 100]; [H, G] = [(C4 x C2) : C2, (C2 x ((C3 x C3) : C4)) : C2];  [G:H] = 9

469 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

470 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

471 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

472 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

473 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

474 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

475 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

476 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

477 0 FOUND AN M_4: GAPid = [144, 124]; [H, G] = [Q16, C3 : (C2 . S4 = SL(2,3) . C2)];  [G:H] = 9

478 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

479 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

480 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

481 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

482 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

483 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

484 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

485 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

486 0 FOUND AN M_4: GAPid = [144, 125]; [H, G] = [QD16, (C3 x SL(2,3)) : C2];  [G:H] = 9

487 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

488 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

489 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

490 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

491 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

492 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

493 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

494 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

495 0 FOUND AN M_4: GAPid = [144, 126]; [H, G] = [(C4 x C2) : C2, (C3 x A4) : C4];  [G:H] = 9

496 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

497 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

498 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

499 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

500 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

501 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

502 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

503 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

504 0 FOUND AN M_4: GAPid = [144, 168]; [H, G] = [C2 x Q8, C2 x ((C3 x C3) : Q8)];  [G:H] = 9

505 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

506 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

507 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

508 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

509 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

510 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

511 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

512 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

513 0 FOUND AN M_4: GAPid = [144, 169]; [H, G] = [C4 x C2 x C2, C2 x C4 x ((C3 x C3) : C2)];  [G:H] = 9

514 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

515 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

516 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

517 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

518 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

519 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

520 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

521 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

522 0 FOUND AN M_4: GAPid = [144, 170]; [H, G] = [C2 x D8, C2 x ((C12 x C3) : C2)];  [G:H] = 9

523 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

524 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

525 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

526 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

527 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

528 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

529 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

530 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

531 0 FOUND AN M_4: GAPid = [144, 171]; [H, G] = [(C4 x C2) : C2, (C12 x C6) : C2];  [G:H] = 9

532 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

533 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

534 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

535 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

536 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

537 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

538 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

539 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

540 0 FOUND AN M_4: GAPid = [144, 172]; [H, G] = [C2 x D8, D8 x ((C3 x C3) : C2)];  [G:H] = 9

541 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

542 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

543 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

544 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

545 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

546 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

547 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

548 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

549 0 FOUND AN M_4: GAPid = [144, 173]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x D8) : C2];  [G:H] = 9

550 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

551 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

552 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

553 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

554 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

555 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

556 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

557 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

558 0 FOUND AN M_4: GAPid = [144, 174]; [H, G] = [C2 x Q8, Q8 x ((C3 x C3) : C2)];  [G:H] = 9

559 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

560 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

561 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

562 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

563 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

564 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

565 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

566 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

567 0 FOUND AN M_4: GAPid = [144, 175]; [H, G] = [(C4 x C2) : C2, (C3 x C3 x Q8) : C2];  [G:H] = 9

568 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

569 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

570 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

571 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

572 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

573 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

574 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

575 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

576 0 FOUND AN M_4: GAPid = [144, 176]; [H, G] = [C4 x C2 x C2, C2 x C2 x ((C3 x C3) : C4)];  [G:H] = 9

577 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

578 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

579 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

580 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

581 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

582 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

583 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

584 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

585 0 FOUND AN M_4: GAPid = [144, 177]; [H, G] = [C2 x D8, C2 x ((C6 x C6) : C2)];  [G:H] = 9

586 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

587 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

588 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

589 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

590 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

591 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

592 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

593 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

594 0 FOUND AN M_4: GAPid = [144, 189]; [H, G] = [C2 x D8, C2 x ((C3 x A4) : C2)];  [G:H] = 9

595 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

596 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

597 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

598 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

599 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

600 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

601 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

602 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9

603 0 FOUND AN M_4: GAPid = [144, 196]; [H, G] = [C2 x C2 x C2 x C2, C2 x C2 x C2 x ((C3 x C3) : C2)];  [G:H] = 9
 ... done (max number of meets = 4) 
603 0 Checking groups of order |G| = 145... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 146... there is/are 2 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 147... there is/are 6 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 148... there is/are 5 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 149... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 150... there is/are 13 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 151... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 152... there is/are 12 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 153... there is/are 2 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 154... there is/are 4 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 155... there is/are 2 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 156... there is/are 18 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 157... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 158... there is/are 2 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 159... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 160... there is/are 238 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 161... there is/are 1 such group(s)... ... done (max number of meets = 0) 
603 0 Checking groups of order |G| = 162... there is/are 55 such group(s)...
604 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

605 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

606 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

607 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

608 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

609 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

610 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

611 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

612 0 FOUND AN M_4: GAPid = [162, 16]; [H, G] = [(C3 x C3) : C2, (C9 x C9) : C2];  [G:H] = 9

613 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

614 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

615 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

616 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

617 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

618 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

619 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

620 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

621 0 FOUND AN M_4: GAPid = [162, 17]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

622 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

623 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

624 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

625 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

626 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

627 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

628 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

629 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

630 0 FOUND AN M_4: GAPid = [162, 18]; [H, G] = [D18, (C27 x C3) : C2];  [G:H] = 9

631 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

632 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

633 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

634 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

635 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

636 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

637 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

638 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

639 0 FOUND AN M_4: GAPid = [162, 19]; [H, G] = [C3 x S3, ((C3 x C3 x C3) : C3) : C2];  [G:H] = 9

640 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

641 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

642 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

643 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

644 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

645 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

646 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

647 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

648 0 FOUND AN M_4: GAPid = [162, 20]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

649 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

650 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

651 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

652 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

653 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

654 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

655 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

656 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

657 0 FOUND AN M_4: GAPid = [162, 21]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

658 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

659 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

660 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

661 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

662 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

663 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

664 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

665 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

666 0 FOUND AN M_4: GAPid = [162, 22]; [H, G] = [C3 x S3, (C3 . ((C3 x C3) : C3) = (C3 x C3) . (C3 x C3)) : C2];  [G:H] = 9

667 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

668 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

669 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

670 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

671 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

672 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

673 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

674 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

675 0 FOUND AN M_4: GAPid = [162, 38]; [H, G] = [C3 x S3, C3 x ((C9 x C3) : C2)];  [G:H] = 9

676 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

677 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

678 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

679 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

680 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

681 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

682 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

683 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

684 0 FOUND AN M_4: GAPid = [162, 39]; [H, G] = [C18, C9 x ((C3 x C3) : C2)];  [G:H] = 9

685 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

686 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

687 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

688 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

689 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

690 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

691 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

692 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

693 0 FOUND AN M_4: GAPid = [162, 40]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

694 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

695 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

696 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

697 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

698 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

699 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

700 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

701 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

702 0 FOUND AN M_4: GAPid = [162, 41]; [H, G] = [C6 x C3, C3 x (((C3 x C3) : C3) : C2)];  [G:H] = 9

703 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

704 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

705 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

706 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

707 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

708 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

709 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

710 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

711 0 FOUND AN M_4: GAPid = [162, 42]; [H, G] = [C3 x S3, (C3 x (C9 : C3)) : C2];  [G:H] = 9

712 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

713 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

714 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

715 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

716 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

717 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

718 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

719 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

720 0 FOUND AN M_4: GAPid = [162, 43]; [H, G] = [C3 x S3, ((C9 x C3) : C3) : C2];  [G:H] = 9

721 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

722 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

723 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

724 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

725 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

726 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

727 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

728 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

729 0 FOUND AN M_4: GAPid = [162, 44]; [H, G] = [C18, ((C9 x C3) : C3) : C2];  [G:H] = 9

730 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

731 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

732 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

733 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

734 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

735 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

736 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

737 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

738 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

739 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

740 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

741 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

742 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

743 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

744 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

745 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

746 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

747 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

748 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

749 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

750 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

751 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

752 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

753 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

754 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

755 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

756 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

757 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

758 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

759 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

760 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

761 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

762 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

763 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

764 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

765 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

766 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

767 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

768 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

769 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

770 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

771 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

772 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

773 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

774 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

775 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

776 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

777 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

778 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

779 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

780 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

781 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

782 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

783 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

784 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

785 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

786 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

787 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

788 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

789 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

790 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

791 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

792 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

793 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

794 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

795 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

796 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

797 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

798 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

799 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

800 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

801 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

802 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

803 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

804 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

805 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

806 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

807 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

808 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

809 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

810 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

811 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

812 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

813 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

814 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

815 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

816 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

817 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

818 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

819 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

820 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

821 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

822 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

823 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

824 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

825 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

826 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

827 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

828 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

829 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

830 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

831 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

832 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

833 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

834 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

835 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

836 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

837 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

838 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

839 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

840 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [(C3 x C3) : C2, (C9 x C3 x C3) : C2];  [G:H] = 9

841 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

842 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

843 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

844 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

845 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

846 0 FOUND AN M_4: GAPid = [162, 45]; [H, G] = [D18, (C9 x C3 x C3) : C2];  [G:H] = 9

847 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

848 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

849 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

850 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

851 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

852 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

853 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

854 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

855 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

856 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

857 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

858 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

859 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

860 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

861 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

862 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

863 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

864 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

865 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

866 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

867 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

868 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

869 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

870 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

871 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

872 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

873 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

874 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

875 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

876 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

877 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

878 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

879 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

880 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

881 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

882 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

883 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

884 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

885 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

886 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

887 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

888 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

889 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

890 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

891 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

892 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

893 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

894 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

895 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

896 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

897 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

898 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

899 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

900 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

901 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

902 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

903 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

904 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

905 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

906 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

907 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

908 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

909 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

910 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

911 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

912 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

913 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

914 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

915 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

916 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

917 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

918 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

919 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

920 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

921 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

922 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

923 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

924 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

925 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

926 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

927 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

928 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

929 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

930 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

931 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

932 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

933 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

934 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

935 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

936 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

937 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

938 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

939 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

940 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

941 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

942 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

943 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

944 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

945 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

946 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

947 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

948 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

949 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

950 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

951 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

952 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

953 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

954 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

955 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

956 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

957 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

958 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

959 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

960 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

961 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

962 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

963 0 FOUND AN M_4: GAPid = [162, 46]; [H, G] = [C3 x S3, (C3 x ((C3 x C3) : C3)) : C2];  [G:H] = 9

964 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

965 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

966 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

967 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

968 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

969 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

970 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

971 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

972 0 FOUND AN M_4: GAPid = [162, 52]; [H, G] = [C6 x C3, C3 x C3 x ((C3 x C3) : C2)];  [G:H] = 9

973 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

974 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

975 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

976 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

977 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

978 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

979 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

980 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

981 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

982 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

983 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

984 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

985 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

986 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

987 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

988 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

989 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

990 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

991 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

992 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

993 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

994 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

995 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

996 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

997 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

998 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

999 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1000 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1001 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1002 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1003 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1004 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1005 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1006 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1007 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1008 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1009 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1010 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1011 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1012 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1013 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1014 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1015 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1016 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1017 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1018 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1019 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1020 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1021 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1022 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1023 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1024 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1025 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1026 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1027 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1028 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1029 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1030 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1031 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1032 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1033 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1034 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1035 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1036 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1037 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1038 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1039 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1040 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1041 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1042 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1043 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1044 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1045 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1046 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1047 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1048 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1049 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1050 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1051 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1052 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1053 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1054 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1055 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1056 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1057 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1058 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1059 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1060 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1061 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1062 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1063 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1064 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1065 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1066 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1067 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1068 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1069 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1070 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1071 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1072 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1073 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1074 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1075 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1076 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1077 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1078 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1079 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1080 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1081 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1082 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1083 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1084 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1085 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1086 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1087 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1088 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1089 0 FOUND AN M_4: GAPid = [162, 53]; [H, G] = [C3 x S3, C3 x ((C3 x C3 x C3) : C2)];  [G:H] = 9

1090 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1091 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1092 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1093 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1094 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1095 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1096 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1097 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1098 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1099 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1100 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1101 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1102 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1103 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1104 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1105 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1106 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1107 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1108 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1109 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1110 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1111 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1112 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1113 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1114 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1115 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1116 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1117 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1118 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1119 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1120 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1121 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1122 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1123 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1124 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1125 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1126 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1127 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1128 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1129 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1130 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1131 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1132 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1133 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1134 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1135 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1136 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1137 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1138 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1139 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1140 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1141 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1142 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1143 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1144 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1145 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1146 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1147 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1148 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1149 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1150 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1151 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1152 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1153 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1154 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1155 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1156 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1157 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1158 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1159 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1160 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1161 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1162 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1163 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1164 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1165 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1166 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1167 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1168 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1169 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1170 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1171 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1172 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1173 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1174 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1175 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1176 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1177 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1178 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1179 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1180 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1181 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1182 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1183 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1184 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1185 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1186 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1187 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1188 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1189 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1190 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1191 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1192 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1193 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1194 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1195 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1196 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1197 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1198 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1199 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1200 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1201 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1202 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1203 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1204 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1205 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1206 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1207 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1208 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1209 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1210 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1211 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1212 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1213 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1214 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1215 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1216 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1217 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1218 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1219 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1220 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1221 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1222 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1223 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1224 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1225 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1226 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1227 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1228 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1229 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1230 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1231 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1232 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1233 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1234 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1235 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1236 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1237 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1238 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1239 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1240 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1241 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1242 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1243 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1244 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1245 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1246 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1247 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1248 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1249 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1250 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1251 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1252 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1253 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1254 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1255 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1256 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1257 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1258 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1259 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1260 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1261 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1262 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1263 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1264 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1265 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1266 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1267 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1268 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1269 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1270 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1271 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1272 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1273 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1274 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1275 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1276 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1277 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1278 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1279 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1280 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1281 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1282 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1283 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1284 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1285 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1286 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1287 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1288 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1289 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1290 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1291 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1292 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1293 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1294 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1295 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1296 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1297 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1298 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1299 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1300 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1301 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1302 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1303 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1304 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1305 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1306 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1307 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1308 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1309 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1310 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1311 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1312 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1313 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1314 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1315 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1316 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1317 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1318 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1319 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1320 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1321 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1322 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1323 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1324 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1325 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1326 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1327 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1328 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1329 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1330 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1331 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1332 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1333 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1334 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1335 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1336 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1337 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1338 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1339 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1340 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1341 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1342 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1343 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1344 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1345 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1346 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1347 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1348 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1349 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1350 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1351 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1352 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1353 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1354 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1355 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1356 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1357 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1358 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1359 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1360 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1361 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1362 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1363 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1364 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1365 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1366 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1367 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1368 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1369 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1370 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1371 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1372 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1373 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1374 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1375 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1376 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1377 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1378 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1379 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1380 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1381 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1382 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1383 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1384 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1385 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1386 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1387 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1388 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1389 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1390 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1391 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1392 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1393 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1394 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1395 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1396 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1397 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1398 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1399 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1400 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1401 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1402 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1403 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1404 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1405 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1406 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1407 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1408 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1409 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1410 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1411 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1412 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1413 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1414 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1415 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1416 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1417 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1418 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1419 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1420 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1421 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1422 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1423 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1424 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1425 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1426 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1427 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1428 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1429 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1430 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1431 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1432 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1433 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1434 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1435 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1436 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1437 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1438 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1439 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1440 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1441 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1442 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1443 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1444 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1445 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1446 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1447 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1448 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1449 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1450 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1451 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1452 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1453 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1454 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1455 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1456 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1457 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1458 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1459 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1460 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1461 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1462 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1463 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1464 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1465 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1466 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1467 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1468 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1469 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1470 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1471 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1472 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1473 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1474 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1475 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1476 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1477 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1478 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1479 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1480 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1481 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1482 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1483 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1484 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1485 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1486 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1487 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1488 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1489 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1490 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1491 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1492 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1493 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1494 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1495 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1496 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1497 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1498 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1499 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1500 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1501 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1502 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1503 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1504 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1505 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1506 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1507 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1508 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1509 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1510 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1511 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1512 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1513 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1514 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1515 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1516 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1517 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1518 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1519 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1520 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1521 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1522 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1523 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1524 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1525 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1526 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1527 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1528 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1529 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1530 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1531 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1532 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1533 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1534 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1535 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1536 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1537 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1538 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1539 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1540 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1541 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1542 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1543 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1544 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1545 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1546 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1547 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1548 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1549 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1550 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1551 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1552 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1553 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1554 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1555 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1556 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1557 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1558 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1559 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1560 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1561 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1562 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1563 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1564 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1565 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1566 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1567 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1568 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1569 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1570 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1571 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1572 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1573 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1574 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1575 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1576 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1577 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1578 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1579 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1580 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1581 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1582 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1583 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1584 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1585 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1586 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1587 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1588 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1589 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1590 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1591 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1592 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1593 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1594 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1595 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1596 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1597 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1598 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1599 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1600 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1601 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1602 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1603 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1604 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1605 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1606 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1607 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1608 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1609 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1610 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1611 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1612 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1613 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1614 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1615 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1616 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1617 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1618 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1619 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1620 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1621 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1622 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1623 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1624 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1625 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1626 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1627 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1628 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1629 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1630 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1631 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1632 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1633 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1634 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1635 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1636 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1637 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1638 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1639 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1640 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1641 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1642 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1643 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1644 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1645 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1646 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1647 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1648 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1649 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1650 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1651 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1652 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1653 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1654 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1655 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1656 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1657 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1658 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1659 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1660 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1661 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1662 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1663 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1664 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1665 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1666 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1667 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1668 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1669 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1670 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1671 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1672 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1673 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1674 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1675 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1676 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1677 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1678 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1679 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1680 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1681 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1682 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1683 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1684 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1685 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1686 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1687 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1688 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1689 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1690 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1691 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1692 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1693 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1694 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1695 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1696 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1697 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1698 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1699 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1700 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1701 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1702 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1703 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1704 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1705 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1706 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1707 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1708 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1709 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1710 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1711 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1712 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1713 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1714 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1715 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1716 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1717 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1718 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1719 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1720 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1721 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1722 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1723 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1724 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1725 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1726 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1727 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1728 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1729 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1730 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1731 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1732 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1733 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1734 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1735 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1736 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1737 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1738 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1739 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1740 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1741 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1742 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1743 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1744 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1745 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1746 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1747 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1748 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1749 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1750 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1751 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1752 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1753 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1754 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1755 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1756 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1757 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1758 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1759 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1760 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1761 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1762 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1763 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1764 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1765 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1766 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1767 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1768 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1769 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1770 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1771 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1772 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1773 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1774 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1775 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1776 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1777 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1778 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1779 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1780 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1781 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1782 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1783 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1784 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1785 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1786 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1787 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1788 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1789 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1790 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1791 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1792 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1793 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1794 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1795 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1796 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1797 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1798 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1799 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1800 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1801 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1802 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1803 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1804 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1805 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1806 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1807 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1808 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1809 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1810 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1811 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1812 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1813 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1814 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1815 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1816 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1817 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1818 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1819 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1820 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1821 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1822 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1823 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1824 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1825 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1826 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1827 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1828 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1829 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1830 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1831 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1832 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1833 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1834 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1835 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1836 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1837 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1838 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1839 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1840 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1841 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1842 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1843 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1844 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1845 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1846 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1847 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1848 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1849 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1850 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1851 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1852 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1853 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1854 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1855 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1856 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1857 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1858 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1859 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1860 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1861 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1862 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1863 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1864 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1865 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1866 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1867 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1868 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1869 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1870 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1871 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1872 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1873 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1874 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1875 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1876 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1877 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1878 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1879 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1880 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1881 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1882 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1883 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1884 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1885 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1886 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1887 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1888 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1889 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1890 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1891 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1892 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1893 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1894 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1895 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1896 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1897 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1898 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1899 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1900 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1901 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1902 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1903 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1904 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1905 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1906 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1907 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1908 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1909 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1910 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1911 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1912 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1913 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1914 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1915 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1916 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1917 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1918 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1919 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1920 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1921 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1922 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1923 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1924 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1925 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1926 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1927 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1928 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1929 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1930 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1931 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1932 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1933 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1934 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1935 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1936 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1937 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1938 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1939 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1940 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1941 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1942 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1943 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1944 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1945 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1946 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1947 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1948 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1949 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1950 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1951 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1952 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1953 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1954 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1955 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1956 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1957 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1958 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1959 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1960 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1961 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1962 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1963 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1964 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1965 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1966 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1967 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1968 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1969 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1970 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1971 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1972 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1973 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1974 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1975 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1976 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1977 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1978 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1979 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1980 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1981 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1982 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1983 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1984 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1985 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1986 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1987 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1988 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1989 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1990 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1991 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1992 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1993 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1994 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1995 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1996 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1997 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1998 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

1999 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2000 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2001 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2002 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2003 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2004 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2005 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2006 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2007 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2008 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2009 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2010 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2011 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2012 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2013 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2014 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2015 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2016 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2017 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2018 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2019 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2020 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2021 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2022 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2023 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2024 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2025 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2026 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2027 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2028 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2029 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2030 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2031 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2032 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2033 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2034 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2035 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2036 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2037 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2038 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2039 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2040 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2041 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2042 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2043 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2044 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2045 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2046 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2047 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2048 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2049 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2050 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2051 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2052 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2053 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2054 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2055 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2056 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2057 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2058 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2059 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2060 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2061 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2062 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2063 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2064 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2065 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2066 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2067 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2068 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2069 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2070 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2071 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2072 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2073 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2074 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2075 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2076 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2077 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2078 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2079 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2080 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2081 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2082 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2083 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2084 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2085 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2086 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2087 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2088 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2089 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2090 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2091 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2092 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2093 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2094 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2095 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2096 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2097 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2098 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2099 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2100 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2101 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2102 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2103 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2104 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2105 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2106 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2107 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2108 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2109 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2110 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2111 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2112 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2113 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2114 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2115 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2116 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2117 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2118 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2119 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2120 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2121 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2122 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2123 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2124 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2125 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2126 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2127 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2128 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2129 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2130 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2131 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2132 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2133 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2134 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2135 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2136 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2137 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2138 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2139 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2140 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2141 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2142 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2143 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2144 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2145 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2146 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2147 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2148 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2149 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2150 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2151 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2152 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2153 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2154 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2155 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2156 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2157 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2158 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2159 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2160 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2161 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2162 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2163 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2164 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2165 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2166 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2167 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2168 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2169 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2170 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2171 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2172 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2173 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2174 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2175 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2176 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2177 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2178 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2179 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2180 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2181 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2182 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2183 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2184 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2185 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2186 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2187 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2188 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2189 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2190 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2191 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2192 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2193 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2194 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2195 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2196 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2197 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2198 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2199 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2200 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2201 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2202 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2203 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2204 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2205 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2206 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2207 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2208 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2209 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2210 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2211 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2212 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2213 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2214 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2215 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2216 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2217 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2218 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2219 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2220 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2221 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2222 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2223 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2224 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2225 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2226 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2227 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2228 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2229 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2230 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2231 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2232 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2233 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2234 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2235 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2236 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2237 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2238 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2239 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2240 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2241 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2242 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2243 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2244 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2245 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2246 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2247 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2248 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2249 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2250 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2251 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2252 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2253 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2254 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2255 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2256 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2257 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2258 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9

2259 0 FOUND AN M_4: GAPid = [162, 54]; [H, G] = [(C3 x C3) : C2, (C3 x C3 x C3 x C3) : C2];  [G:H] = 9
 ... done (max number of meets = 4) 
2259 0 Checking groups of order |G| = 163... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 164... there is/are 5 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 165... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 166... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 167... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 168... there is/are 57 such group(s)... ... done (max number of meets = 3) 
2259 0 Checking groups of order |G| = 169... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 170... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 171... there is/are 5 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 172... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 173... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 174... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 175... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 176... there is/are 42 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 177... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 178... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 179... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2259 0 Checking groups of order |G| = 180... there is/are 37 such group(s)...
2260 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2261 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2262 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2263 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2264 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2265 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2266 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2267 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2268 0 FOUND AN M_4: GAPid = [180, 16]; [H, G] = [C20, C5 x ((C3 x C3) : C4)];  [G:H] = 9

2269 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2270 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2271 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2272 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2273 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2274 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2275 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2276 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2277 0 FOUND AN M_4: GAPid = [180, 17]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2278 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2279 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2280 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2281 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2282 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2283 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2284 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2285 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2286 0 FOUND AN M_4: GAPid = [180, 22]; [H, G] = [C5 : C4, (C15 x C3) : C4];  [G:H] = 9

2287 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2288 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2289 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2290 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2291 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2292 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2293 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2294 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2295 0 FOUND AN M_4: GAPid = [180, 27]; [H, G] = [D20, ((C3 x C3) : C2) x D10];  [G:H] = 9

2296 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2297 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2298 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2299 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2300 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2301 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2302 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2303 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2304 0 FOUND AN M_4: GAPid = [180, 35]; [H, G] = [C10 x C2, C10 x ((C3 x C3) : C2)];  [G:H] = 9

2305 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2306 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2307 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2308 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2309 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2310 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2311 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2312 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9

2313 0 FOUND AN M_4: GAPid = [180, 36]; [H, G] = [D20, C2 x ((C15 x C3) : C2)];  [G:H] = 9
 ... done (max number of meets = 4) 
2313 0 Checking groups of order |G| = 181... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 182... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 183... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 184... there is/are 12 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 185... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 186... there is/are 6 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 187... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 188... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 189... there is/are 13 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 190... there is/are 4 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 191... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 192... there is/are 1543 such group(s)... ... done (max number of meets = 3) 
2313 0 Checking groups of order |G| = 193... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 194... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 195... there is/are 2 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 196... there is/are 12 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 197... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2313 0 Checking groups of order |G| = 198... there is/are 10 such group(s)...
2314 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2315 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2316 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2317 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2318 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2319 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2320 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2321 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2322 0 FOUND AN M_4: GAPid = [198, 8]; [H, G] = [C22, C11 x ((C3 x C3) : C2)];  [G:H] = 9

2323 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2324 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2325 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2326 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2327 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2328 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2329 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2330 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9

2331 0 FOUND AN M_4: GAPid = [198, 9]; [H, G] = [D22, (C33 x C3) : C2];  [G:H] = 9
 ... done (max number of meets = 4) 
2331 0 Checking groups of order |G| = 199... there is/are 1 such group(s)... ... done (max number of meets = 0) 
2331 0 Checking groups of order |G| = 200... there is/are 52 such group(s)... ... done (max number of meets = 0) 
gap> Read("~/pub/research/DeMeo/LatticeTheory/GAP/programs/findM4Upper.g");
gap> findM4Upper(200,255);
user interrupt at
d := rep[d];
 called from
orbish( G, D, pnt, gens, acts, act ) called from
Blocks( g, dom, t ) called from
DoBlocks( t ) called from
DoBlocks( subo[1] ) called from
AllBlocks( op ) called from
...
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' to continue
brk> 
brk> 
brk> quit;
0 0 Checking groups of order |G| = 200... there is/are 52 such group(s)...gap> 
gap> 
gap> clear;
Variable: 'clear' must have a value

gap> quit;
