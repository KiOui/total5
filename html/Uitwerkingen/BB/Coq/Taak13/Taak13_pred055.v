(* Exercise 55 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_055 : ~(forall x, P x /\ Q x) /\ (forall x, Q x) -> ~(forall x, P x).
Proof.
imp_i a1.
neg_i (forall x:D, P x /\ Q x) a2.
con_e1 (forall x:D, Q x).
hyp a1.
all_i a.
con_i.
all_e (forall x:D, P x) a.
hyp a2.
all_e (forall x:D, Q x) a.
con_e2 (~(forall x:D, P x /\ Q x)).
hyp a1.
Qed.