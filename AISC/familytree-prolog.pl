male(suresh).
male(ram).
male(raju).
female(anjali).
female(seeta).
female(reena).
parent_of(suresh,nita).
parent_of(suresh, raju).
parent_of(anjali, nita).
parent_of(anjali, raju).
is_sister(reena, anjali).
parent_of(raju, anjali).

is_father(X,Y):-male(X), parent_of(X,Y).
is_mother(X,Y):-female(X),parent_of(X,Y).
is_grandfather(X,Y):- male(X),parent_of(X,Z),parent_of(Z,Y).
is_grandmother(X,Y):-female(X),parent_of(X,Z),parent_of(Z,Y).
is_sister(X,Y):-female(X),parent_of(Z,X),parent_of(Z,Y), X\==Y.
is_brother(X,Y):-male(X),parent_of(Z,X),parent_of(Z,Y),X\==Y.
is_uncle(X,Z):-male(X),is_brother(X,A),parent_of(A,Z).
is_aunt(X,Z):-female(X),is_sister(X,A),parent_of(A,Z).
