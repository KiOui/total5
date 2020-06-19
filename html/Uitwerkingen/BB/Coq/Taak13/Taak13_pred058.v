(* Exercise 58 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Variables a b : D.

Theorem exercise_058 : (forall x : D, forall y : D, x = y) /\ (P a) -> (P b).
Proof.
imp_i a1.
replace b with a.
con_e2 (forall x:D, forall y:D, x = y).
hyp a1.
all_e (forall y:D, a = y) b.
all_e (forall x:D, forall y:D, x = y) a.
con_e1 (P a).
hyp a1.
Qed.