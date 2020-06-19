(* Exercise 123 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_123 : ((A \/ (A -> B)) -> B) -> B.
Proof.
imp_i a1.
imp_e (A \/ (A -> B)).
hyp a1.
dis_e (A \/ ~A) a2 a2.
LEM.
dis_i1.
hyp a2.
dis_i2.
imp_i a3.
neg_e A.
hyp a2.
hyp a3.
Qed.