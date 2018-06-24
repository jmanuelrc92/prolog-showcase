/* 2018-06-11 @jmanuelrc92 */
/* Facts ------------------*/
male(james1).
male(charles1).
male(charles2).
male(james2).
male(george1).

female(catherine).
female(elizabeth).
female(sophia).

parent(james1, charles1).
parent(james1, elizabeth).
parent(charles1, charles2).
parent(charles1, catherine).
parent(charles1, james2).
parent(elizabeth, sophia).
parent(sophia, george1).
/* /Facts ------------------*/

/* 2018-06-11 @jmanuelrc92 */
mother(Mother, SonOrDaughter):-
  female(Mother),
  parent(Mother, SonOrDaughter).

/* 2018-06-11 @jmanuelrc92 */
father(Father, SonOrDaughter):-
  male(Father),
  parent(Father, SonOrDaughter).

/* 2018-06-11 @jmanuelrc92 */
sibling(Son1, Son2):-
  parent(CommonParent, Son1),
  parent(CommonParent, Son2),
  Son1 \== Son2.

/* 2018-06-11 @jmanuelrc92 */
sister(Girl, BoyOrGirl):-
  female(Girl),
  sibling(Girl, BoyOrGirl).

/* 2018-06-11 @jmanuelrc92 */
brother(Boy, BoyOrGirl):-
  male(Boy),
  sibling(Boy, BoyOrGirl).

/* 2018-06-11 @jmanuelrc92 */
aunt(Aunt, Nephew):-
  sister(Aunt, NephewParent),
  parent(NephewParent, Nephew).

/* 2018-06-11 @jmanuelrc92 */
uncle(Uncle, Nephew):-
  brother(Uncle, NephewParent),
  parent(NephewParent, Nephew).

/* 2018-06-11 @jmanuelrc92 */
grandparent(Grandparent, Grandson):-
  parent(Grandparent, Parent),
  parent(Parent, Grandson).

/* 2018-06-11 @jmanuelrc92 */
cousin(BoyOrGirl1, BoyOrGirl2):-
  parent(Parent1, BoyOrGirl1),
  parent(Parent2, BoyOrGirl2),
  sibling(Parent1, Parent2).