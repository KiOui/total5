(* Exercise 50 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_050 : ((A -> B) -> A) -> ((B -> A) -> A).
Proof.
imp_i a1.
imp_i a2.
dis_e (A \/ ~A) a3 a3.
LEM.
hyp a3.
imp_e (A -> B).
hyp a1.
imp_i a4.
neg_e A.
hyp a3.
hyp a4.
Qed.