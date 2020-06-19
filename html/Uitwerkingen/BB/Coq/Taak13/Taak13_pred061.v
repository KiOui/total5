(* Exercise 61 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_061 : (exists x, ~ R x x) -> (exists x, exists y, ~ R x y).
Proof.
imp_i a1.
exi_e (exists x:D, ~R x x) a a2.
hyp a1.
exi_i a.
exi_i a.
hyp a2.
Qed.