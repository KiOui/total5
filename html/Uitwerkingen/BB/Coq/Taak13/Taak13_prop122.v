(* Exercise 122 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_122 : (B -> C) -> (A \/ B) -> (A \/ C).
Proof.
imp_i a1.
imp_i a2.
dis_e (A \/ B) a3 a3.
hyp a2.
dis_i1.
hyp a3.
dis_i2.
imp_e B.
hyp a1.
hyp a3.
Qed.