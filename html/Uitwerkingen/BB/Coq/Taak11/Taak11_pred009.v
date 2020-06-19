(* Exercise 9 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_009 : (forall x : D, P x /\ Q x) -> ~(exists x : D, ~ P x).
Proof.
imp_i a1.
neg_i (forall x:D, P x) a2.
exi_e (exists x:D, ~P x) y a3.
hyp a2.
neg_i (P y) a4.
hyp a3.
all_e (forall x:D, P x) y.
hyp a4.
all_i y.
con_e1 (Q y).
all_e (forall x:D, P x /\ Q x) y.
hyp a1.
Qed.