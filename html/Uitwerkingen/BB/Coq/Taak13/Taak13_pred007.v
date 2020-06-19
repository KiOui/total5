(* Exercise 7 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_007 : ~(forall x : D, P x \/ Q x) -> ~(forall x : D, P x).
Proof.
imp_i a1.
neg_i (forall x:D, P x \/ Q x) a2.
hyp a1.
all_i a.
dis_i1.
all_e (forall x:D, P x) a.
hyp a2.
Qed.