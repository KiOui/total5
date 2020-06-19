(* Exercise 4 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_004 : (forall x y : D, R x y) -> forall x : D, R x x.
Proof.
imp_i a1.
all_i a.
all_e (forall y:D, R a y) a.
all_e (forall x:D, forall y:D, R x y) a.
hyp a1.
Qed.