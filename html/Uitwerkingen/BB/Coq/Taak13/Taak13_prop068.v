(* Exercise 68 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_068 : (A -> C) -> (A /\ B -> C).
Proof.
imp_i a1.
imp_i a2.
imp_e A.
hyp a1.
con_e1 B.
hyp a2.
Qed.