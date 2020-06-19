(* Exercise 81 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Variables a b c : D.

Hypothesis Domain : forall x : D, (x = a \/ x = b \/ x = c). 

Theorem exercise_081 : (P a /\ P b /\ P c) -> (forall x : D, P x).
Proof.
imp_i a1.
all_i d.
dis_e (d = a \/ d = b \/ d = c) a2 a2.
all_e (forall x:D, (x = a \/ x = b \/ x = c)) d.
hyp Domain.
replace d with a.
con_e1 (P b /\ P c).
hyp a1.
dis_e (d = b \/ d = c) a3 a3.
hyp a2.
replace d with b.
con_e1 (P c).
con_e2 (P a).
hyp a1.
replace d with c.
con_e2 (P b).
con_e2 (P a).
hyp a1.
Qed.