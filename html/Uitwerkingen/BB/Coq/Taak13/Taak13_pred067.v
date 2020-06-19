(* Exercise 67 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_067 : (forall x : D, ~ P x) -> ~ exists x : D, P x.
Proof.
imp_i a1.
neg_i (1=1) a2.
exi_e (exists x:D, P x) a a3.
hyp a2.
neg_e (P a).
all_e (forall x:D, ~P x) a.
hyp a1.
hyp a3.
lin_solve.
Qed.