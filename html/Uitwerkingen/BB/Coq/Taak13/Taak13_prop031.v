(* Exercise 31 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_031 : ~(A /\ (B /\ C)) -> A -> (B -> ~C).
Proof.
imp_i a1.
imp_i a2.
imp_i a3.
neg_i (A /\ B /\ C) a4.
hyp a1.
con_i.
hyp a2.
con_i.
hyp a3.
hyp a4.
Qed.