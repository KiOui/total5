(* Exercise 13 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_013 : (exists x : D, P x \/ Q x) -> (forall x : D, ~(Q x)) -> (exists x : D, P x).
Proof.
imp_i a1.
imp_i a2.
exi_e (exists x:D, P x \/ Q x) a a3.
hyp a1.
exi_i a.
dis_e (P a \/ Q a) a4 a4.
hyp a3.
hyp a4.
neg_e (Q a).
all_e (forall x:D, ~Q x) a.
hyp a2.
hyp a4.
Qed.