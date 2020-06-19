(* Exercise 24 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_024 : (exists x, ~(P x \/ Q x)) -> ~(forall x, P x).
Proof.
imp_i a1.
exi_e (exists x:D, ~(P x \/ Q x)) a a2.
hyp a1.
neg_i (P a) a3.
neg_i (P a \/ Q a) a4.
hyp a2.
dis_i1.
hyp a4.
all_e (forall x:D, P x) a.
hyp a3.
Qed.
