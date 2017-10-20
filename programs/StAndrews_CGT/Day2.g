HELP("AllSmallGroups");
AllSmallGroups(Size, 24, IsAbelian, true);
Length(AllSmallGroups(Size, 24, IsAbelian, false));
HELP("NumberSmallGroups");
Length(AllSmallGroups(Size, 128, IsAbelian, false));
CenterSizes:=List(AllSmallGroups(Size, 128, IsAbelian, false), x->Size(Center(x)));
Average(CenterSizes);
Length(AllSmallGroups(Size, 24, IsAbelian, false));
Length(AllSmallGroups(Size, 128, IsAbelian, false));
Average(CenterSizes);
Float(last);
g:=Group((2,4,6,8,10),(1,9)*(2,8)*(3,7)*(4,6), (1,6)*(2,7)*(3,8)*(4,9)*(5,10));
IdGroup(g);
HELP("Filtered");
HELP("1");
CompositionSeries(g);
NonSol120:=AllSmallGroups(Size, 120, IsSolvable, false);
Length(NonSol120);
List(NonSol120, x->CompositionSeries(x));
CompSeriesNS120:=List(NonSol120, x->CompositionSeries(x));
CompSeriesNS120[1];
List(CompSeriesNS120[1], x->StructureDescription(x));
List(CompSeriesNS120[2], x->StructureDescription(x));
List(CompSeriesNS120[3], x->StructureDescription(x));
#
# Question 5.
#
ASG                                                                                                                                                                                                                                                                                                                                                                                                                                 AllSmallGroups(Size, 48);
ASG48:=AllSmallGroups(Size, 48);
for x in ASG48 do
els:=Elements(x);
for el in els do
od;
od;
NumOrder3Els:=0;
for x in ASG48 do
els:=Elements(x);
for el in els do
if Order(el)=3 then
NumOrder3Els:=NumOrder3Els+1;
fi;
od;
od;
NumOrder3Els;
#
# Question 6.
#
M24:=MathieuGroup(24);
HELP("AtlasGroup");
HELP("1");
AtlasGroup("A5");
Load(AtlasGroup);
HELP("Load package");
HELP("load package");
HELP("loading packages");
HELP("load");
HELP("3");
LoadPackage("AtlasGroups");
LoadPackage(AtlasGroups);
HELP("loading packages");
HELP("load");
HELP("3");
TestPackageAvailability("AtlasGroup");
TestPackageAvailability("AtlasRep");
LoadPackage("AtlasRep");
H:=AtlasGroup("He");
HELP("Sylow");
HELP("2");
HSyl2:=SylowSubgroup(H,2);
MSyl2:=SylowSubgroup(M24,2);
HELP("IsomorphismGroup");
IsomorphismGroup(MSyl2,HSyl2);
IsomorphismGroups(MSyl2,HSyl2);
#
# Question 7
#
HELP("AllSmallGroups");
#ASGUpTo32:=AllSmallGroups(Size, [2..32], IsAbelian, false
HELP("Center");
HELP("2");
HELP("CenterSizes");
HELP("CenterSizes");
CenterSizes
;
ASGUpTo32:=AllSmallGroups(Size, [2..32], IsAbelian, false);
HELP("Filtered");
HELP("1");
CenterlessASNAG:=Filtered(ASGUpTo32, x->Center(x)=0);
Filtered(AllSmallGroups(Size, [32..64], IsAbelian, false), x->Center(x)=0);
Filtered(AllSmallGroups(Size, [64..128], IsAbelian, false), x->Center(x)=0);
ASGUpTo32
;
for x in ASGUpTo32 do
Print("\n", Center(x));
od;
Filtered(AllSmallGroups(Size, [2..16], IsAbelian, false), x->Size(Center(x))=1);

gps:= Filtered(AllSmallGroups(Size, [2..16], IsAbelian, false), x->Size(Center(x))=1);
for g in gps do
od;
HELP("first");
HELP("1");
for g in gps do
Print("\n", First(Elements(g), x->Order(x)=2));
od;
Read("Question_3_7.g");
FindGroup(2,16);
quit;
Read("Question_3_7.g");
FindGroup(2,16);
FindGroup(17,32);
FindGroup(33,64);
g:=FindGroup(33,64);
StructureDescription(g);


#
#
#  LAB 4
# 
#
# Question 1
#
FG:=FreeGroup("a", "b");
HELP("FreeGroup");
HELP("1");
a*a^{-1}
;
Inverse(a);
G;
FG;
a;
"a"
;
GeneratorsOfGroup(FG);
gens:=GeneratorsOfGroup(FG);
a:=gens[1];
ParseRelators(FG, "a^2=1=a^3=(ab)^7=[a,b]");
FG/ParseRelators(FG, "a^2=1=a^3=(ab)^7=[a,b]");
g:=FG/ParseRelators(FG, "a^2=1=a^3=(ab)^7=[a,b]");
a;
quit;
