(* Exercise 54 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_054 : (~A \/ ~B) -> (B -> ~(B -> A)).
Proof.
imp_i a1.
imp_i a2.
neg_i (1=1) a3.
dis_e (~A \/ ~B) a4 a4.
hyp a1.
neg_e A.
hyp a4.
imp_e B.
hyp a3.
hyp a2.
neg_e B.
hyp a4.
hyp a2.
lin_solve.
Qed.