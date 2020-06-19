(* Exercise 12 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_012 : (forall x : D, (exists y : D, R y x) -> P x) -> (exists x : D, exists y : D, R x y) -> (exists x : D, P x).
Proof.
imp_i a1.
imp_i a2.
exi_e (exists x:D, exists y:D, R x y) a a3.
hyp a2.
exi_e (exists y:D, R a y) b a4.
hyp a3.
exi_i b.
imp_e (exists y:D, R y b).
all_e (forall x : D, (exists y : D, R y x) -> P x) b.
hyp a1.
exi_i a.
hyp a4.
Qed.