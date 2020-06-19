(* Exercise 56 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_056 : (A -> B) \/ (A /\ ~B).
Proof.
dis_e (A \/ ~A) a1 a1.
LEM.
dis_e (B \/ ~B) a2 a2.
LEM.
dis_i1.
imp_i a3.
hyp a2.
dis_i2.
con_i.
hyp a1.
hyp a2.
dis_e (B \/ ~B) a2 a2.
LEM.
dis_i1.
imp_i a3.
neg_e A.
hyp a1.
hyp a3.
dis_i1.
imp_i a3.
neg_e A.
hyp a1.
hyp a3.
Qed.
