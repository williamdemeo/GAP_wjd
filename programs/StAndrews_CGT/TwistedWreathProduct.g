#
# Derek Holt's Suggestion:
#
# Look in the group WreathProduct(S5,S3) for a certain subgroup of index 8
S5:=SymmetricGroup(5);
S3:=SymmetricGroup(3);
G:=WreathProduct(S5,S3);
# We could try to get all the conj classes of subgroups...
ccsg:=ConjugacyClassesSubgroups(G);
# ...but this doesn't finish in a reasonable amount of time.
# However, Alexander Hulpke pointed out that it will work in GAP 4.7
#
# For now, Alexander suggests doing the following:
N:=Socle(G);
StructureDescription(N);
h:=NaturalHomomorphismByNormalSubgroup(G,N);
K:=Image(h);
ccsg:=ConjugacyClassesSubgroups(K);
List(ccsg,x->PreImage(h,Representative(x)));
subs:=last;
List(subs,x->Index(G,x));
mysubs:=Filtered(subs,x->Index(G,x)=8);
List(mysubs,x->Orbits(x,MovedPoints(G)));
List(mysubs,x->Size(Action(Stabilizer(x,[1..5]),[1..5])));
List(mysubs,x->Size(Action(Stabilizer(x,[1..5],OnSets),[1..5])));
