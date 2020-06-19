(* Exercise 48 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_048 : (forall x, forall y, R x y /\ R y x) -> ~(exists x, ~ R x x).
Proof.
imp_i a1.
neg_i (1=1) a2.
exi_e (exists x:D, ~R x x) a a3.
hyp a2.
neg_e (R a a).
hyp a3.
con_e1 (R a a).
all_e (forall y:D, R a y /\ R y a) a.
all_e (forall x:D, forall y:D, R x y /\ R y x) a.
hyp a1.
lin_solve.
Qed.