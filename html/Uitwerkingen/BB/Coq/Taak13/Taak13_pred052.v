(* Exercise 52 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_052 : (exists y, forall x, P x -> R x y) -> (forall x, P x -> exists y, R x y).
Proof.
imp_i a1.
exi_e (exists y:D, forall x:D, P x -> R x y) a a2.
hyp a1.
all_i b.
imp_i a3.
exi_i a.
imp_e (P b).
all_e (forall x:D, P x -> R x a) b.
hyp a2.
hyp a3.
Qed.