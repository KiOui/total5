(* Exercise 35 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_035 : (A -> (B -> C)) /\ (A -> B) -> (A -> C).
Proof.
imp_i a1.
imp_i a2.
imp_e B.
imp_e A.
con_e1 (A -> B).
hyp a1.
hyp a2.
imp_e A.
con_e2 (A -> B -> C).
hyp a1.
hyp a2.
Qed.