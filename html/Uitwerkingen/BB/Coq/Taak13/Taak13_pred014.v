(* Exercise 14 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_014 : ~(forall x : D, exists y : D, R x y) -> ~(forall x : D, R x x).
Proof.
imp_i a1.
neg_i (forall x:D, exists y:D, R x y) a2.
hyp a1.
all_i a.
exi_i a.
all_e (forall x:D, R x x) a.
hyp a2.
Qed.