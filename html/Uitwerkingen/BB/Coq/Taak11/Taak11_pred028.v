(* Exercise 28 *) 

Require Import BenB.

Variable D : Set.
Variable R : D -> D -> Prop.

Theorem exercise_028 : (forall x:D, forall y:D, R x y) -> ~(exists x:D, ~ R x x).
Proof.
imp_i a1.
neg_i (exists x:D, ~R x x) a2.
exi_e (exists x:D, ~R x x) a a3.
hyp a2.
neg_i (R a a) a4.
hyp a3.
all_e (forall y:D, R a y) a.
all_e (forall x:D, forall y:D, R x y) a.
hyp a1.
hyp a2.
Qed.