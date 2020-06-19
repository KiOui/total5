(* Exercise 60 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Variables a b : D.

Theorem exercise_060 : (P b) /\ ~ (P a) -> ~(forall x : D, forall y : D, x = y).
Proof.
imp_i a1.
neg_i (P a) a2.
con_e2 (P b).
hyp a1.
replace a with b.
con_e1 (~P a).
hyp a1.
all_e (forall y:D, b = y) a.
all_e (forall x:D, forall y:D, x = y) b.
hyp a2.
Qed.