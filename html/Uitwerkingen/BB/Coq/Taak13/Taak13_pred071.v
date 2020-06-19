(* Exercise 71 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_071 : (forall x : D, x = x).
Proof.
all_i a.
lin_solve.
Qed.