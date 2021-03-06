gap> g:=Group([(1,2),(1,2,3)]);
Group([ (1,2), (1,2,3) ])
gap> G:=Action(g,g,OnRight);
Group([ (1,3)(2,4)(5,6), (1,4,5)(2,3,6) ])
gap> for b in AllBlocks(G) do Print(Orbits(G,b,OnSets)-1, "\n"); od;
Error, OnSets: <set> must be a set (not a integer) in
  i := act( p, gen ); called from 
OrbitOp( G, D[pos], gens, acts, act ) called from
op( G, D, gens, gens, act ) called from
Orbits( G, b, OnSets ) called from
<function "unknown">( <arguments> )
 called from read-eval loop at line 4 of *stdin*
you can replace <set> via 'return <set>;'
brk> quit;
gap> for b in AllBlocks(G) do Print(Orbit(G,b,OnSets)-1, "\n"); od;
[ [ 0, 2 ], [ 3, 5 ], [ 1, 4 ] ]
[ [ 0, 3, 4 ], [ 1, 2, 5 ] ]
[ [ 0, 1 ], [ 2, 3 ], [ 4, 5 ] ]
[ [ 0, 5 ], [ 2, 4 ], [ 1, 3 ] ]
gap> Read("Overalgebras.g");
gap> Overalgebra([G, [[0,3],[2,5]]]);
Overalgebra called with the following arguments: 
args[1] = Group( [ (1,3)(2,4)(5,6), (1,4,5)(2,3,6) ] )
args[2] = [ [ 0, 3 ], [ 2, 5 ] ]
uacalc file: ./Overalgebra-S3-[ 0, 3 ]-[ 2, 5 ].ua
axes = [ [ 0, 3 ], [ 2, 5 ] ]
B0 = [ 0, 1, 2, 3, 4, 5 ]
B1 = [ 6, 7, 8, 9, 10, 11 ]
B2 = [ 11, 12, 13, 14, 15, 16 ]
p0[1] = ( 1, 7)( 2, 8)( 3, 9)( 4,10)( 5,11)( 6,12)
p0[2] = ( 1,12)( 2,13)( 3,14)( 4,15)( 5,16)( 6,17)
s = [ 0, 1, 2, 3, 4, 5, [ 0, 3 ], [ 0, 3 ], [ 0, 3 ], [ 0, 3 ], [ 0, 3 ], [ 0, 3 ], [ 2, 5 ], [ 2, 5 ], [ 2, 5 ], [ 2, 5 ] ]
gap> OveralgebraXO([G, [[0,3],[2,5]]]);
OveralgebraXO called with the following arguments: 
args[1] = Group( [ (1,3)(2,4)(5,6), (1,4,5)(2,3,6) ] )
args[2] = [ [ 0, 3 ], [ 2, 5 ] ]
uacalc file: ./OveralgebraXO-S3_0-3_2-5.ua
AXES = [ [ 0, 3 ], [ 2, 5 ] ]
B0 = [ 0, 1, 2, 3, 4, 5 ]
BB[1] = [ 0, 6, 7, 8, 9, 10 ]
BB[2] = [ 11, 12, 13, 3, 14, 15 ]
BB[3] = [ 16, 17, 2, 18, 19, 20 ]
BB[4] = [ 21, 22, 23, 24, 25, 5 ]
e[0] = [ 0, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 0, 1, 2, 4, 5, 0, 1, 3, 4, 5, 0, 1, 2, 3, 4 ]
e[1] = [ 0, 6, 7, 8, 9, 10, 6, 7, 8, 9, 10, 0, 6, 7, 9, 10, 0, 6, 8, 9, 10, 0, 6, 7, 8, 9 ]
e[2] = [ 11, 12, 13, 3, 14, 15, 12, 13, 3, 14, 15, 11, 12, 13, 14, 15, 11, 12, 3, 14, 15, 11, 12, 13, 3, 14 ]
e[3] = [ 16, 17, 2, 18, 19, 20, 17, 2, 18, 19, 20, 16, 17, 2, 19, 20, 16, 17, 18, 19, 20, 16, 17, 2, 18, 19 ]
e[4] = [ 21, 22, 23, 24, 25, 5, 22, 23, 24, 25, 5, 21, 22, 23, 25, 5, 21, 22, 24, 25, 5, 21, 22, 23, 24, 25 ]
s = [ 0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 5, 5, 5, 5, 5 ]
s[1] = [ 0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 ]
s[2] = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 2, 2, 2, 2, 2, 5, 5, 5, 5, 5 ]
g[1]e0 = [ 2, 3, 0, 1, 5, 4, 3, 0, 1, 5, 4, 2, 3, 0, 5, 4, 2, 3, 1, 5, 4, 2, 3, 0, 1, 5 ]
g[2]e0 = [ 3, 2, 5, 4, 0, 1, 2, 5, 4, 0, 1, 3, 2, 5, 0, 1, 3, 2, 4, 0, 1, 3, 2, 5, 4, 0 ]
gap> 