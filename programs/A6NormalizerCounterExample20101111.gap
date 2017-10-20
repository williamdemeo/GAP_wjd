# GAP commands giving a counterexample to my earlier question:
# Suppose H and K are incomparable subgroups of a group G.  
# Is it true that N(H \cap K) = H \cap K implies N(H)=H and N(K)=K?
#
# This occurs, but it is surprisingly rare.  In fact, there are
# no groups of order |G| < 96, and no nonsolvable groups of order
# |G| < 360, with this property, and 360 may be the smallest among
# all subgroups with this property.
# 

G := SmallGroup(360,118);; 
StructureDescription(G);              # A6

ccs := ConjugacyClassesSubgroups(G);;

H := Representative(ccs[16]);; 
StructureDescription(H);              # (C3 x C3) : C2
StructureDescription(Normalizer(G,H));# (C3 x C3) : C4
                                      # (H is not self-normalizing)

K := Representative(ccs[17]);; 
StructureDescription(K);                # S4
StructureDescription(Normalizer(G,K));  # S4
                                        # (K is self-normalizing)

HcapK := Intersection(H,K);; 
StructureDescription(HcapK);              # S3
StructureDescription(Normalizer(G,HcapK));# S3
                                          # (HcapK is self-normalizing)

# The filter above HcapK is:
filterHcapK := IntermediateSubgroups(G,HcapK);;  
Size(filterHcapK.subgroups);   # There are four intermediate subgroups:
filterHcapK.subgroups[1];      # H = (C3 x C3) : C2
filterHcapK.subgroups[2];      # K = S4 = N(K)
filterHcapK.subgroups[3];      # N(H) = (C3 x C3) : C4
filterHcapK.subgroups[4];      # A5

# We can view them inside the Hasse diagram of Sub[A6] as follows:
L := GraphicSubgroupLattice(G);
InsertVertex(L, HcapK);
InsertVertex(L, H);
InsertVertex(L, K);
InsertVertex(L, filterHcapK.subgroups[3]); 
InsertVertex(L, filterHcapK.subgroups[4]); 

# The same could have been achieved more efficiently with:
for k in [1..Size(filterHcapK.subgroups)] do
    InsertVertex(L, filterHcapK.subgroups[k]); 
od;



    
  