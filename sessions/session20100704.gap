gap> s3 := Group( (1,2), (1,2,3) );
Group([ (1,2), (1,2,3) ])
gap> a3 := Group( (1,2,3) );
Group([ (1,2,3) ])
gap> s3a3 := DirectProduct( s3, a3 );
Group([ (1,2), (1,2,3), (4,5,6) ])
gap> Size( s3a3 );
18
gap> Order( s3a3 );
18
gap> i1 := Embedding( s3a3, 1 );
1st embedding into Group([ (1,2), (1,2,3), (4,5,6) ])
gap> i2 := Embedding( s3a3, 2 );
2nd embedding into Group([ (1,2), (1,2,3), (4,5,6) ])
gap> p1 := Projection( s3a3, 1 );
1st projection of Group([ (1,2), (1,2,3), (4,5,6) ])
gap> p2 := Projection( s3a3, 2 );
2nd projection of Group([ (1,2), (1,2,3), (4,5,6) ])
gap> Source( i1 );
Group([ (1,2), (1,2,3) ])
gap> Source( i2 );
Group([ (1,2,3) ])
gap> ImagesSource( i1 );
Group([ (1,2), (1,2,3) ])
gap> ImagesSource( i2 );
Group([ (4,5,6) ])
gap> Range( i1 ); Range( i2 );
Group([ (1,2), (1,2,3), (4,5,6) ])
Group([ (1,2), (1,2,3), (4,5,6) ])
gap> Source( p1 ); Source( p2 );
Group([ (1,2), (1,2,3), (4,5,6) ])
Group([ (1,2), (1,2,3), (4,5,6) ])
gap> Range( p1 ); Range( p2 );
Group([ (1,2), (1,2,3) ])
Group([ (1,2,3) ])
gap> Image( i1 );
Group([ (1,2), (1,2,3) ])
gap> Image( i2 );
Group([ (4,5,6) ])
gap> Image( p1 ); Image( p2 );
Group([ (1,2), (1,2,3) ])
Group([ (1,2,3) ])
gap> Image( p1, (4,5,6) ); Image( p2, (4,5,6) );
()
(1,2,3)
gap> Image( p1, (1,2)(4,5,6) ); Image( p2, (1,2)(4,5,6) );
(1,2)
(1,2,3)
gap> Image( p1, (1,2,3)(4,5) ); Image( p2, (1,2,3)(4,5) );
Error, usage: Image(<map>), Image(<map>,<elm>), Image(<map>,<coll>) called from
<function>( <arguments> ) called from read-eval-loop
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' to continue
brk> quit;
gap> Elements(Source( p2 ));
[ (), (4,5,6), (4,6,5), (2,3), (2,3)(4,5,6), (2,3)(4,6,5), (1,2), 
  (1,2)(4,5,6), (1,2)(4,6,5), (1,2,3), (1,2,3)(4,5,6), (1,2,3)(4,6,5), 
  (1,3,2), (1,3,2)(4,5,6), (1,3,2)(4,6,5), (1,3), (1,3)(4,5,6), (1,3)(4,6,5) ]
gap> Image( p1, (1,2,3)(4,6,5) ); Image( p2, (1,2,3)(4,6,5) );
(1,2,3)
(1,3,2)
gap> a4 := AlternatingGroup(4);
Alt( [ 1 .. 4 ] )
gap> c2 := CyclicGroup(2);
<pc group of size 2 with 1 generators>
gap> a4c2 := DirectProduct( a4, c2 );
<group of size 24 with 3 generators>
gap> cclsa4 := ConjugacyClassesSubgroups(a4);
[ Group( () )^G, Group( [ (1,2)(3,4) ] )^G, Group( [ (2,4,3) ] )^G, 
  Group( [ (1,3)(2,4), (1,2)(3,4) ] )^G, 
  Group( [ (1,3)(2,4), (1,4)(2,3), (2,4,3) ] )^G ]
gap> v4 := Representative( cclsa4[4]);
Group([ (1,3)(2,4), (1,2)(3,4) ])
gap> Order(v4); IsAbelian(v4);
4
true
gap> Order(v4); IsCyclic(v4);
4
false
gap> s3;
Group([ (1,2), (1,2,3) ])
gap> a3;
Group([ (1,2,3) ])
gap> s3a3
> ;
Group([ (1,2), (1,2,3), (4,5,6) ])
gap> Order(s3a3);
18
gap> DirectProduct(a3,s3);
Group([ (1,2,3), (4,5), (4,5,6) ])
gap> g := Group((1,2,3), (1,2));
Group([ (1,2,3), (1,2) ])
gap> s3 = g;
true
gap> DirectProduct(g,a3);
Group([ (1,2,3), (1,2), (4,5,6) ])
gap> Subgroups( a3c2 );
Variable: 'Subgroups' must have a value

gap> ConjugacyClassesSubgroups( a4c2 );
[ Group( Tuple( [ (), <identity> of ... ] ) )^G, 
  Group( [ Tuple( [ (), f1 ] ) ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), f1 ] ) ] )^G, 
  Group( [ Tuple( [ (2,3,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), <identity> of ... ] ), 
      Tuple( [ (1,3)(2,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (), f1 ] ), Tuple( [ (1,2)(3,4), <identity> of ... ] ) 
     ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), <identity> of ... ] ), Tuple( [ (1,3)(2,4
         ), f1 ] ) ] )^G, 
  Group( [ Tuple( [ (), f1 ] ), Tuple( [ (2,3,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (), f1 ] ), Tuple( [ (1,2)(3,4), <identity> of ... ] ), 
      Tuple( [ (1,3)(2,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), <identity> of ... ] ), 
      Tuple( [ (1,3)(2,4), <identity> of ... ] ), 
      Tuple( [ (2,3,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (1,2,3), <identity> of ... ] ), 
      Tuple( [ (2,3,4), <identity> of ... ] ), Tuple( [ (), f1 ] ) ] )^G ]
gap> cclsa4c2 := ConjugacyClassesSubgroups( a4c2 );
[ Group( Tuple( [ (), <identity> of ... ] ) )^G, 
  Group( [ Tuple( [ (), f1 ] ) ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), f1 ] ) ] )^G, 
  Group( [ Tuple( [ (2,3,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), <identity> of ... ] ), 
      Tuple( [ (1,3)(2,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (), f1 ] ), Tuple( [ (1,2)(3,4), <identity> of ... ] ) 
     ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), <identity> of ... ] ), Tuple( [ (1,3)(2,4
         ), f1 ] ) ] )^G, 
  Group( [ Tuple( [ (), f1 ] ), Tuple( [ (2,3,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (), f1 ] ), Tuple( [ (1,2)(3,4), <identity> of ... ] ), 
      Tuple( [ (1,3)(2,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (1,2)(3,4), <identity> of ... ] ), 
      Tuple( [ (1,3)(2,4), <identity> of ... ] ), 
      Tuple( [ (2,3,4), <identity> of ... ] ) ] )^G, 
  Group( [ Tuple( [ (1,2,3), <identity> of ... ] ), 
      Tuple( [ (2,3,4), <identity> of ... ] ), Tuple( [ (), f1 ] ) ] )^G ]
gap> List( cclsa4c2, x -> Index(Representative(x))=4);
Error, no method found! For debugging hints type ?Recovery from NoMethodFound
Error, no 1st choice method found for `Index' on 1 arguments called from
Index( Representative( x ) ) called from
func( elm ) called from
<function>( <arguments> ) called from read-eval-loop
Entering break read-eval-print loop ...
you can 'quit;' to quit to outer loop, or
you can 'return;' to continue
brk> quit;
gap> List( cclsa4c2, x -> Index(a4c2,Representative(x))=4);
[ false, false, false, false, false, false, false, false, true, false, false, 
  false ]
gap> v4c2 := First(Index(a4c2,Representative(x))=4);
Variable: 'x' must have a value

gap> v4c2 := First( cclsa4c2, x -> Index(a4c2,Representative(x))=4);
Group( [ Tuple( [ (), f1 ] ), Tuple( [ (2,3,4), <identity> of ... ] ) ] )^G
gap> v4c2 := Representative(First( cclsa4c2, x -> Index(a4c2,Representative(x))=4));
<group of size 6 with 2 generators>
gap> Elements(v4c2);
[ Tuple( [ (), <identity> of ... ] ), Tuple( [ (), f1 ] ), 
  Tuple( [ (2,3,4), <identity> of ... ] ), Tuple( [ (2,3,4), f1 ] ), 
  Tuple( [ (2,4,3), <identity> of ... ] ), Tuple( [ (2,4,3), f1 ] ) ]
gap> Image( p1, (1,2,3) );
(1,2,3)
gap> Image( p2, (1,2,3) );
()
gap> UnderlyingRelation( p1 );
<object>
gap> Elements(UnderlyingRelation( p1 ));
[ Tuple( [ (), () ] ), Tuple( [ (4,5,6), () ] ), Tuple( [ (4,6,5), () ] ), 
  Tuple( [ (2,3), (2,3) ] ), Tuple( [ (2,3)(4,5,6), (2,3) ] ), 
  Tuple( [ (2,3)(4,6,5), (2,3) ] ), Tuple( [ (1,2), (1,2) ] ), 
  Tuple( [ (1,2)(4,5,6), (1,2) ] ), Tuple( [ (1,2)(4,6,5), (1,2) ] ), 
  Tuple( [ (1,2,3), (1,2,3) ] ), Tuple( [ (1,2,3)(4,5,6), (1,2,3) ] ), 
  Tuple( [ (1,2,3)(4,6,5), (1,2,3) ] ), Tuple( [ (1,3,2), (1,3,2) ] ), 
  Tuple( [ (1,3,2)(4,5,6), (1,3,2) ] ), Tuple( [ (1,3,2)(4,6,5), (1,3,2) ] ), 
  Tuple( [ (1,3), (1,3) ] ), Tuple( [ (1,3)(4,5,6), (1,3) ] ), 
  Tuple( [ (1,3)(4,6,5), (1,3) ] ) ]
gap> Elements(UnderlyingRelation( i1 ));
[ Tuple( [ (), () ] ), Tuple( [ (2,3), (2,3) ] ), Tuple( [ (1,2), (1,2) ] ), 
  Tuple( [ (1,2,3), (1,2,3) ] ), Tuple( [ (1,3,2), (1,3,2) ] ), 
  Tuple( [ (1,3), (1,3) ] ) ]
gap> Elements(UnderlyingRelation( i2 ));
[ Tuple( [ (), () ] ), Tuple( [ (1,2,3), (4,5,6) ] ), 
  Tuple( [ (1,3,2), (4,6,5) ] ) ]
gap> Elements(UnderlyingRelation( p2 ));
[ Tuple( [ (), () ] ), Tuple( [ (4,5,6), (1,2,3) ] ), 
  Tuple( [ (4,6,5), (1,3,2) ] ), Tuple( [ (2,3), () ] ), 
  Tuple( [ (2,3)(4,5,6), (1,2,3) ] ), Tuple( [ (2,3)(4,6,5), (1,3,2) ] ), 
  Tuple( [ (1,2), () ] ), Tuple( [ (1,2)(4,5,6), (1,2,3) ] ), 
  Tuple( [ (1,2)(4,6,5), (1,3,2) ] ), Tuple( [ (1,2,3), () ] ), 
  Tuple( [ (1,2,3)(4,5,6), (1,2,3) ] ), Tuple( [ (1,2,3)(4,6,5), (1,3,2) ] ), 
  Tuple( [ (1,3,2), () ] ), Tuple( [ (1,3,2)(4,5,6), (1,2,3) ] ), 
  Tuple( [ (1,3,2)(4,6,5), (1,3,2) ] ), Tuple( [ (1,3), () ] ), 
  Tuple( [ (1,3)(4,5,6), (1,2,3) ] ), Tuple( [ (1,3)(4,6,5), (1,3,2) ] ) ]
gap> LogTo();
