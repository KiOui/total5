(* Exercise 35 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_035 : (forall y, Q y -> ~ exists x, P x) /\ (forall x, P x) -> (forall y, ~ Q y).
Proof.
imp_i a1.
all_i a.
neg_i (exists x:D, P x) a2.
imp_e (Q a).
all_e (forall y:D, Q y -> ~(exists x:D, P x)) a.
con_e1 (forall x:D, P x).
hyp a1.
hyp a2.
exi_i a.
all_e (forall x:D, P x) a.
con_e2 (forall y:D, Q y -> ~(exists x:D, P x)).
hyp a1.
Qed.