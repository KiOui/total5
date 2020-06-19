(* Exercise 63 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

(* Disjunction_implies_existence *)
Variables a b c : D.

Theorem exercise_063 : (P a \/ P b \/ P c) -> (exists x, P x).
Proof.
imp_i a1.
dis_e (P a \/ P b \/ P c) a2 a2.
hyp a1.
exi_i a.
hyp a2.
dis_e (P b \/ P c) a3 a3.
hyp a2.
exi_i b.
hyp a3.
exi_i c.
hyp a3.
Qed.