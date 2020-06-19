(* Exercise 30 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_030 : (exists x, P x \/ Q x) /\ (forall x, ~ Q x) -> (exists x, P x).
Proof.
imp_i a1.
exi_e (exists x:D, P x \/ Q x) a a2.
con_e1 (forall x:D, ~Q x).
hyp a1.
dis_e (P a \/ Q a) a3 a3.
hyp a2.
exi_i a.
hyp a3.
neg_e (Q a).
all_e (forall x:D, ~Q x) a.
con_e2 (exists x:D, P x \/ Q x).
hyp a1.
hyp a3.
Qed.