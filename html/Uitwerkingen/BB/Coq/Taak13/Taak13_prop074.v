(* Exercise 74 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_074 : (A /\ (B -> C)) -> B -> (A /\ C).
Proof.
imp_i a1.
imp_i a2.
con_i.
con_e1 (B -> C).
hyp a1.
imp_e B.
con_e2 (A).
hyp a1.
hyp a2.
Qed.