(* Exercise 68 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.

Theorem exercise_068 : ~ (exists x : D, P x) -> forall x : D, ~ P x.
Proof.
imp_i a1.
all_i a.
neg_e' (exists x:D, P x) a2.
hyp a1.
exi_i a.
neg_e' (~P a) a3.
hyp a2.
hyp a3.
Qed.