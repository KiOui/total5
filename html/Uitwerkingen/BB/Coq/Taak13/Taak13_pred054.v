(* Exercise 54 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Variable a : D.

Theorem exercise_054 : (forall x, (exists y, R x y) -> R x a) -> (forall z, ~ R z a -> forall y, ~ R z y).
Proof.
imp_i a1.
all_i b.
imp_i a2.
all_i c.
neg_i (R b a) a3.
hyp a2.
imp_e (exists y:D, R b y).
all_e (forall x : D, (exists y : D, R x y) -> R x a) b.
hyp a1.
exi_i c.
hyp a3.
Qed.

