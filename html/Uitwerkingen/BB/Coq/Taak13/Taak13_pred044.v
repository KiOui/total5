(* Exercise 44 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_044 : (forall x, P x -> Q x) /\ (forall x, ~(P x /\ Q x)) -> (forall x, ~ P x).
Proof.
imp_i a1.
all_i a.
neg_i (Q a) a2.
neg_i (P a /\ Q a) a3.
all_e (forall x:D, ~(P x /\ Q x)) a.
con_e2 (forall x:D, P x -> Q x).
hyp a1.
con_i.
hyp a2.
hyp a3.
imp_e (P a).
all_e (forall x:D, P x -> Q x) a.
con_e1 (forall x:D, ~(P x /\ Q x)).
hyp a1.
hyp a2.
Qed.