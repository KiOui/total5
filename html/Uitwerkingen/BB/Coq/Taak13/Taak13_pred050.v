(* Exercise 50 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_050 : (forall y, P y -> forall x, R x y) -> (forall x, P x) -> (forall x, forall y, R x y).
Proof.
imp_i a1.
imp_i a2.
all_i a.
all_i b.
all_e (forall x:D, R x b) a.
imp_e (P b).
all_e (forall y:D, P y -> forall x:D, R x y) b.
hyp a1.
all_e (forall x:D, P x) b.
hyp a2.
Qed.