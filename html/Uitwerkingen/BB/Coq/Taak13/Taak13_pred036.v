(* Exercise 36 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_036 : (exists x, forall y, ~ R x y) -> ~ (forall x, R x x).
Proof.
imp_i a1.
exi_e (exists x:D, forall y:D, ~R x y) a a2.
hyp a1.
neg_i (R a a) a3.
all_e (forall y:D, ~R a y) a.
hyp a2.
all_e (forall x:D, R x x) a.
hyp a3.
Qed.