(* Exercise 21 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_021 : ~((forall x : D, P x) /\ (exists x : D, ~ P x)).
Proof.
neg_i (1=1) a1.
exi_e (exists x:D, ~P x) a a2.
con_e2 (forall x:D, P x).
hyp a1.
neg_e (P a).
hyp a2.
all_e (forall x:D, P x) a.
con_e1 (exists x:D, ~P x).
hyp a1.
lin_solve.
Qed.