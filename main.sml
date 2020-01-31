(* Name: Michael Hrishenko *)
(* Email: mahrishe@syr.edu *)

fun timesPlus x y = (x*y, x+y);

(********************************************************)
(* Exercise 3.4.1 *)
(* Author: Michael Hrishenko *)
(* Date: 17JAN2020 *)
(********************************************************)

val listA = [(0,"Alice"), (1,"Bob"), (3,"Carol"),(4,"Dan")];
val (elB :: listB) = listA;
val (elC1, elC2) = elB;
val (elC3 :: elC4 :: elC5 :: []) = listB;

(********************************************************)
(* Exercise 3.4.2 *)
(* Author: Michael Hrishenko *)
(* Date: 17JAN2020 *)
(********************************************************)

val (x1,x2,x3) = (1,true,"Alice");
val pair1 = (x1,x3);
val list1 = [0,x1,2];
val list2 = [x2,x1];
val list3 = (1 :: [x3]);

(********************************************************)
(* Exercise 4.6.3 *)
(* Author: Michael Hrishenko *)
(* Date: 20JAN2020 *)
(********************************************************)
(fn x => (fn y => 2*x + y))1 2; (* EXAMPLE *)
(*** A ***)
val funA1 = (fn x => (fn y => (fn z => x + y + z)));
fun funA2 x y z = x + y + z;
(*** B ***)
val funB1 = (fn y => (fn x => x < y));
fun funB2 x y = x < y;
(*** C ***)
val funC1 = (fn a => (fn b => a ^ b));
fun funC2 a b = a ^ b;
(*** D ***)
val funD1 = (fn x => (fn y => x @ y));
fun funD2 x y = x @ y;
(*** E ***)
val funE1 = (fn a => (fn b => if a > b then a else b));
fun funE2 a b = if a > b then a else b;

(********************************************************)
(* Exercise 4.6.4 *)
(* Author: Michael Hrishenko *)
(* Date: 20JAN2020 *)
(********************************************************)
fun listSquares arr =
let
        fun sqr x = x * x
        fun arq [] = [] | arq (x::xs) = sqr x :: arq xs
    in
        arq arr
end;

fun sqr [] = [] | sqr (x::xs) = (x * x) :: sqr xs;

(********************************************************)
(* Exercise 5.3.4 *)
(* Author: Michael Hrishenko *)
(* Date: 20JAN2020 *)
(********************************************************)
fun flt a b = map a b; (* THIS RETURNS THE BOOLS NEEDED *)
fun Filtr proc1 arr =
let
        val out = []
        fun retr proc2 (z::zs) = if proc2 z then z::out else out :: retr proc2 zs
    in
        retr proc1 arr
end;


Principles are the doers
    Simple and Compound
        Simple = Alice
        Compound = Alice quoting Shakespeare