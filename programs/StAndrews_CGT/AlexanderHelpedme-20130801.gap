Read("TwistedWreathProduct.g");
quit;
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
IsBound(GAPInfo.UseReadline);
SaveCommandLineHistory("AlexanderHelpedme-20130801.gap");