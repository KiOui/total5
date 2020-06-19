(* Exercise 41 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_041 : ((A -> B) /\ (B -> C)) -> (A -> (B -> C)).
Proof.
imp_i a1.
imp_i a2.
imp_i a3.
imp_e B.
con_e2 (A -> B).
hyp a1.
hyp a3.
Qed.