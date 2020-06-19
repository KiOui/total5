(* Exercise 70 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_070 : ~ (forall x : D, P x) -> exists x : D, ~ P x.
Proof.
imp_i a1.
neg_e' (forall x:D, P x) a2.
hyp a1.
all_i a.
neg_e' (exists x:D, ~P x) a3.
hyp a2.
exi_i a.
hyp a3.
Qed.