(* Exercise 49 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_049 : (A -> (B -> ~A)) -> ~A \/ ~B.
Proof.
imp_i a1.
dis_e (A \/ ~A) a2 a2.
LEM.
dis_e (B \/ ~B) a3 a3.
LEM.
dis_i1.
imp_e B.
imp_e A.
hyp a1.
hyp a2.
hyp a3.
dis_i2.
hyp a3.
dis_i1.
hyp a2.
Qed.
