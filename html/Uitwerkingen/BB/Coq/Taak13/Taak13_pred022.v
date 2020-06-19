(* Exercise 22 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_022 : (exists x : D, R x x /\ P x) -> ~ (forall x : D, P x -> ~ (exists y : D, R x y)).
Proof.
imp_i a1.
exi_e (exists x:D, R x x /\ P x) a a3.
hyp a1.
neg_i (exists y:D, R a y) a2.
imp_e (P a).
all_e (forall x : D, P x -> ~ (exists y : D, R x y)) a.
hyp a2.
con_e2 (R a a).
hyp a3.
exi_i a.
con_e1 (P a).
hyp a3.
Qed.
