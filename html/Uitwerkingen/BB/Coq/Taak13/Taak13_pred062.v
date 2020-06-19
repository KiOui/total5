(* Exercise 62 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_062 : (forall x, ~exists y, R x y) -> (forall x, forall y, ~ R x y).
Proof.
imp_i a1.
all_i a.
all_i b.
neg_i (exists y:D, R a y) a2.
all_e (forall x:D, ~(exists y:D, R x y)) a.
hyp a1.
exi_i b.
hyp a2.
Qed.
