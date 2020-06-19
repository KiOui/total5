(* Exercise 32 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_032 : (forall x, (P x /\ ~ Q x) -> S x) /\ (exists x, ~ S x /\ ~ Q x) -> (exists x, ~ P x).
Proof.
imp_i a1.
exi_e (exists x:D, ~S x /\ ~Q x) a a2.
con_e2 (forall x:D, P x /\ ~Q x -> S x).
hyp a1.
dis_e (P a \/ ~P a) a3 a3.
LEM.
neg_e (S a).
con_e1 (~Q a).
hyp a2.
imp_e (P a /\ ~Q a).
all_e (forall x:D, P x /\ ~Q x -> S x) a.
con_e1 (exists x:D, ~S x /\ ~Q x).
hyp a1.
con_i.
hyp a3.
con_e2 (~S a).
hyp a2.
exi_i a.
hyp a3.
Qed.