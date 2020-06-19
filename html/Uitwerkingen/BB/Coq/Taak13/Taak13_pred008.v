(* Exercise 8 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_008 : ~(forall x : D, P x) -> ~(forall x : D, P x /\ Q x).
Proof.
imp_i a1.
neg_i (forall x:D, P x) a2.
hyp a1.
all_i a.
con_e1 (Q a).
all_e (forall x:D, P x /\ Q x) a.
hyp a2.
Qed.