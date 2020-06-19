(* Exercise 25 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_025 : ~(forall x, P x /\ Q x) /\ (forall x, P x) -> ~(forall x, Q x).
Proof.
imp_i a1.
neg_i (forall x:D, P x /\ Q x) a2.
con_e1 (forall x:D, P x).
hyp a1.
all_i a.
con_i.
all_e (forall x:D, P x) a.
con_e2 (~(forall x:D, P x /\ Q x)).
hyp a1.
all_e (forall x:D, Q x) a.
hyp a2.
Qed.