/* 2018-06-11 @jmanuelrc92 */
/* get the size (number of elements) of the given list */
listSize([], 0).

listSize([_|Tail], Counter):-
	listSize(Tail, Counter2),
	Counter is Counter2 + 1.
/* /get the size (number of elements) */


/* 2018-06-11 @jmanuelrc92 */
/* sum all the elements in a given list */
sumList([], 0).

sumList([Head|Tail], Accumulator):-
	sumList(Tail, Accumulator2),
	Accumulator is Accumulator2 + Head.
/* /sum all the elements in a given list */


/* 2018-06-11 @jmanuelrc92 */
/* search for a element in a given list */
memberOfList([Needle|_], Needle).

memberOfList([_|Haystack], Needle):-
	memberOfList(Haystack, Needle).
/* /search for a element in a given list */


/* 2018-06-11 @jmanuelrc92 */
/* reverse the values of a given list */
reverse([], Reversed, Reversed).

reverse([Head|Tail], SoFar, Reversed):-
	reverse(Tail, [Head|SoFar], Reversed).

reverseList(List, ReversedList):-
	reverse(List, [], ReversedList).
/* /reverse the values of a given list */