LogTo("pg_gap2.log");
 ####################################################################
 #                                                                  #
 # This is the GAP example from Chapter 3 of "Permutation Groups",  #
 # by Peter J. Cameron, Cambridge University Press 1999.            #
 #                                                                  #
 # The purpose is to construct the unique Moore graph having        #
 # diameter 2 and valency 7 on 50 vertices, the so-called           #
 # Hoffman-Singleton graph, and investigate its automorphism group  #
 # and some other graphs and groups built from it.                  #
 #                                                                  #
 # GAP will run with this file as input, but only the last commands #
 # produce any output. To see the whole thing, copy the             #
 # non-comment lines to the GAP prompt.                             #
 #                                                                  #
 # If you are running GAP under LINUX, you can issue the command    #
 #       gap < pg_gap2.txt                                          #
 # (where pg_gap2.txt is the name of this file)                     #
 # and you will produce a log file pg_gap2.log which will contain   #
 # all of this file with the output in the appropriate place!       #
 # I don't know how to do this with other operating systems.        #
 # The options                                                      #
 #       gap pg_gap2.txt                                            #
 # or                                                               #
 #       Read("pg_gap2.txt"); # while GAP is running                #
 # will NOT work.                                                   #
 #                                                                  #
 # I have suppressed some very long output. This can be             #
 # reinstated by changing ;; to ;                                   #
 #                                                                  #
 ####################################################################
 #
 # Load the GRAPE package 
 #
RequirePackage("grape");
 #
 # Construct a function for a group action on sets of sets, etc.
 #
OnSetsRecursive:=function(x,g)
  if not IsSet(x) then
    return x^g;                    # this is the action of
                                   # permutation g on point x
  else
    return Set(List(x, y -> OnSetsRecursive(y,g)));
  fi;
end;
 #
 # The adjacency rule for the Hoffman-Singleton graph, as
 # constructed in the book: 
 # the vertices are the 3-subsets of 1..7
 # together with an A_7 orbit on projective planes;
 # two 3-sets are adjacent if they are disjoint;
 # a 3-set and a plane are adjacent if the 3-set is a line of the plane.
 #
HSAdjacent:=function(x,y)
  if IsInt(x[1]) then              # x is a 3-set
    if IsInt(y[1]) then            # y is a 3-set
      return Intersection(x,y)=[]; # join if disjoint
    else                           # or y is a projective plane
      return x in y;               # join if x is a line of y
    fi;
  else                             # or x is a projective plane
    if IsInt(y[1]) then            # and y is a 3-set
      return y in x;               # join if y is a line of x
    else                           # or y is a projective plane
      return false;                # don't join
    fi;
  fi;
end;
 #
 # Here is a starting projective plane
 #
Pi:=Set([[1,2,4],[2,3,5],[3,4,6],[4,5,7],
     [1,5,6],[2,6,7],[1,3,7]]);
 #
 # Construct the graph using GRAPE's graph constructor
 #
HofSingGraph:=Graph(AlternatingGroup(7),
                    [[1,2,3], Pi],
                    OnSetsRecursive,
                    HSAdjacent);;
 #
 # and now the group is the automorphism group of the graph
 # (this uses the GAP4 command AutomorphismGroup - if you are
 # using GAP3, you should upgrade, but you can use the command
 # AutGroupGraph instead)
 #
HofSingGroup:=AutomorphismGroup(HofSingGraph);
 #
 # and we can update the group of the graph to speed things up
 #
HofSingGraph := NewGroupGraph(HofSingGroup,HofSingGraph);;
 #
 # We recognise a specific coclique as the set of planes in our
 # original construction of the graph
 #
IsPlane:=function(x)
  return not IsInt(VertexName(HofSingGraph,x)[1]);
end;
 #
Coclique:=Set(Filtered(Vertices(HofSingGraph),IsPlane));
 #
 # and construct the 100 images of this set under the group
 #
Cocliques:=Orbit(HofSingGroup, Coclique, OnSets);;
 #
 # This code calculates the number of cocliques meeting a given one
 # in any given number of vertices
 #
IntList:=Collected(List(Cocliques,
          x -> Size(Intersection(x,Coclique))));
 #
 # Now we construct several 100-vertex graphs on the set of cocliques
 # where the joining rules are specified by a list of intersection sizes
 #
Joined:=function(x,y,L)    # L is a list of intersection sizes
  return Size(Intersection(x,y)) in L;
end;
 #
J0:=function(x,y)
  return Joined(x,y,[0]);
end;
 #
Graph0:=Graph(HofSingGroup, [Coclique], OnSets, J0);;
 #
 # Graph0 is isomorphic to the disjoint union of two copies
 # of the Hoffman-Singleton graph - let's check this
 #
List(ConnectedComponents(Graph0),
  x -> IsIsomorphicGraph(InducedSubgraph(Graph0,x),HofSingGraph));
 #
J8:=function(x,y)
  return Joined(x,y,[8]);
end;
 #
Graph8:=Graph(HofSingGroup, [Coclique], OnSets, J8);;
 #
 # Graph8 is distance-transitive with valency 15 and diameter 4
 # We check the distance-regularity with GlobalParameters
 #
GlobalParameters(Graph8);
 #
J08:=function(x,y)
  return Joined(x,y,[0,8]);
end;
 #
Graph08:=Graph(HofSingGroup, [Coclique], OnSets, J08);;
 #
 # Graph08 is the Higman-Sims graph
 #
GlobalParameters(Graph08);
 #
 # This checks that Graph08 is strongly regular
 #
 # and finally, composition series of the groups:
 #
DisplayCompositionSeries(HofSingGroup);               # U(3,5).2
DisplayCompositionSeries(AutomorphismGroup(Graph08)); # HS.2
 # Now the book suggests constructing the 2-transitive action of HS:
HigSimsGroup:=DerivedSubgroup(AutomorphismGroup(Graph08));;
 # short names
G:=HigSimsGroup;; H:=AutomorphismGroup(Graph8);; 
IsSubgroup(G,H);
 # degree of permutation group - should be 176
Index(G,H);
 # construct the permutation group
 # Note: "Operation" changed to "Action" in GAP4
HigSimsTwoTrans:=Action(G,RightCosets(G,H),OnRight);
 # degree of transitivity - should be 2
Transitivity(HigSimsTwoTrans);
