LogTo("pg_gap1.log");
 ####################################################################
 #                                                                  #
 # This is the GAP example from Chapter 1 of "Permutation Groups",  #
 # by Peter J. Cameron, Cambridge University Press 1999.            #
 #                                                                  #
 # The purpose is to construct the unique example of a 2-transitive #
 # almost simple finite permutation group whose minimal normal      #
 # subgroup is not 2-transitive. The group is PSigmaL(2,8),         #
 # acting on the cosets of the Sylow 3-normaliser.                  #
 #                                                                  #
 # GAP will run with this file as input, but only the last command  #
 # produces any output. To see the whole thing, copy the            #
 # non-comment lines to the GAP prompt.                             #
 #                                                                  #
 # If you are running GAP under LINUX, you can issue the command    #
 #       gap < pg_gap1.txt                                          #
 # (where pg_gap1.txt is the name of this file)                     #
 # and you will produce a log file pg_gap1.log which will contain   #
 # all of this file with the output in the appropriate place!       #
 # I don't know how to do this with other operating systems.        #
 # The options                                                      #
 #       gap pg_gap1.txt                                            #
 # or                                                               #
 #       Read("pg_gap1.txt"); # while GAP is running                #
 # will NOT work.                                                   #
 #                                                                  #
 ####################################################################
 #
 # We construct PSigmaL(2,8) as follows.
 # Take GF(8) to be generated by an element a satisfying a^3=a+1.
 # Identify a^i with the element i+1 for i=0, ..., 6; 
 # the zero of GF(8) with 8; and infinity with 9.
 # The three permutations below are 
 # g1: x -> x+1, 
 # g2: x -> ax, and 
 # g3: x -> 1/x.
 # They generate PSL(2,8).
 #
S:=SymmetricGroup(9);
g1:=(1,8)(2,4)(3,7)(5,6);
g2:=(1,2,3,4,5,6,7);
g3:=(2,7)(3,6)(4,5)(8,9);
N:=Subgroup(S,[g1,g2,g3]);
 # Check that it has order 504
Size(N);
 # and that it is 3-transitive 
 # (the command "Transitivity" was not used in the book)
Transitivity(N);
 # Now G = PSigmaL(2,8) is the normaliser of N in S=S_9
G:=Normalizer(S,N);
 # it is three times as large as N
Size(G);
 # Now we construct the action on the cosets of the Sylow 
 # 3-normaliser
P:=SylowSubgroup(G,3);
Q:=Normalizer(G,P);
 # Note: "Operation" changed to "Action" in GAP4
GG:=Action(G,RightCosets(G,Q),OnRight);
 # This should be our 2-transitive group of degree 28
Orbits(GG,[1..28]);
Transitivity(GG);
 # and as a check
GGa:=Stabilizer(GG,1);
Orbits(GGa,[1..28]);
 # The minimal normal subgroup is the derived group
NN:=DerivedSubgroup(GG);
Orbits(NN,[1..28]);
Transitivity(NN);
 # and to find the rank
RankAction(NN,[1..28]);
 # or in detail:
NNa:=Stabilizer(NN,1);
Orbits(NNa,[1..28]);
 # It is not 2-transitive, but it is primitive
IsPrimitive(NN,[1..28]);
 # Finally check its composition series
DisplayCompositionSeries(GG);