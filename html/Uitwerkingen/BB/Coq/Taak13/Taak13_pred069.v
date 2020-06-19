(* Exercise 69 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_069 : (exists x : D, ~ P x) -> ~ (forall x : D, P x).
Proof.
imp_i a1.
neg_i (1=1) a2.
exi_e (exists x:D, ~P x) a a3.
hyp a1.
neg_e (P a).
hyp a3.
all_e (forall x:D, P x) a.
hyp a2.
lin_solve.
Qed.