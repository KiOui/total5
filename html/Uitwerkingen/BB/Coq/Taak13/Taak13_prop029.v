(* Exercise 29 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_029 : ~A -> (~(A \/ ~B) \/ (~A /\ ~B)).
Proof.
imp_i a1.
dis_e (B \/ ~B) a2 a2.
LEM.
dis_i1.
neg_i (1=1) a3.
dis_e (A \/ ~B) a4 a4.
hyp a3.
neg_e A.
hyp a1.
hyp a4.
neg_e B.
hyp a4.
hyp a2.
lin_solve.
dis_i2.
con_i.
hyp a1.
hyp a2.
Qed.