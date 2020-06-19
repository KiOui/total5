(* Exercise 27 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_027 : ~(A \/ (~A /\ B)) -> (~A /\ ~B).
Proof.
imp_i a1.
con_i.
neg_i (A \/ ~A /\ B) a2.
hyp a1.
dis_i1.
hyp a2.
neg_i (A \/ ~A /\ B) a3.
hyp a1.
dis_e (A \/ ~A) a4 a4.
LEM.
dis_i1.
hyp a4.
dis_i2.
con_i.
hyp a4.
hyp a3.
Qed.