(* Exercise 80 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Variables a b c : D.

Hypothesis Domain : forall x : D, (x = a \/ x = b \/ x = c). 

Theorem exercise_080 : (forall x : D, P x) -> (P a /\ P b /\ P c).
Proof.
imp_i a1.
con_i.
all_e (forall x:D, P x) a.
hyp a1.
con_i.
all_e (forall x:D, P x) b.
hyp a1.
all_e (forall x:D, P x) c.
hyp a1.
Qed.