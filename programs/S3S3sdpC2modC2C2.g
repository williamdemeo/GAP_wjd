G:=SmallGroup(72,40);  # A6
cc:=ConjugacyClassesSubgroups(G);
H:=Representative(cc[8]);
act:=Action(G,RightCosets(G,H),OnRight);
GeneratorsOfGroup(act);
g{1}='(1,2)(3,10)(4,6)(5,7)(8,15)(9,12)(11,13)(14,18)(16,17)';
g{2}='(3,4)(5,6)(7,9)(10,12)(13,14)(15,16)';
g{3}='(3,7)(4,9)(5,10)(6,12)(8,17)(11,18)(13,14)(15,16)';
g{4}='(1,3,7)(2,5,10)(4,8,13)(6,11,15)(9,14,17)(12,16,18)';
g{5}='(1,4,9)(2,6,12)(3,8,14)(5,11,16)(7,13,17)(10,15,18)';


