(* Exercise 28 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_028 : ~(A \/ ~B) \/ (~A /\ ~B) -> ~A.
Proof.
imp_i a1.
dis_e (~(A \/ ~B) \/ ~A /\ ~B) a2 a2.
hyp a1.
neg_i (A \/ ~B) a3.
hyp a2.
dis_i1.
hyp a3.
con_e1 (~B).
hyp a2.
Qed.