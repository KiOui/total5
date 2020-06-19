(* Exercise 84 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_084 : (exists x : D, (P x /\ Q x)) -> (exists x : D, P x) /\ (exists x : D, Q x).
Proof.
imp_i a1.
exi_e (exists x:D, P x /\ Q x) a a2.
hyp a1.
con_i.
exi_i a.
con_e1 (Q a).
hyp a2.
exi_i a.
con_e2 (P a).
hyp a2.
Qed.