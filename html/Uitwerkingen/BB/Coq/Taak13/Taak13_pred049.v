(* Exercise 49 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_049 : (forall y, P y -> forall x, R x y) -> (exists y, P y) -> (exists z, forall x, R x z).
Proof.
imp_i a1.
imp_i a2.
exi_e (exists x:D, P x) a a3.
hyp a2.
exi_i a.
imp_e (P a).
all_e (forall y:D, P y -> forall x:D, R x y) a.
hyp a1.
hyp a3.
Qed.



























