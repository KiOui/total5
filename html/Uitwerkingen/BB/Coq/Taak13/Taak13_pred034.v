(* Exercise 34 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_034 : ~(forall x, P x \/ (Q x -> S x)) -> ~(forall x, S x).
Proof.
imp_i a1.
neg_i (forall x:D, P x \/ (Q x -> S x)) a2.
hyp a1.
all_i a.
dis_i2.
imp_i a3.
all_e (forall x:D, S x) a.
hyp a2.
Qed.