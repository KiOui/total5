Require Import BenB.

(* The universal set of things,
   including penguins and TV-shows. *)
Variable U: Set.

(* P u: u is a penguin. *)
Variable P: U -> Prop.

(* BW u: u is black and white. *)
Variable BW: U -> Prop.

(* TV u: u is an old TV show. *)
Variable TV: U -> Prop.

Definition penguins_are_black_and_white :=
forall x: U, P(x) -> BW(x) .

Definition some_old_tv_shows_are_black_and_white :=
exists x: U, TV(x) /\ BW(x).

Definition some_penguins_are_old_tv_shows :=
exists x: U, P(x) /\ TV(x).


Definition dummy :=
1 = 1.

Definition penguin_logic :=
(penguins_are_black_and_white
/\
some_old_tv_shows_are_black_and_white) ->
some_penguins_are_old_tv_shows.

Check penguin_logic.