(* Exercise 119 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_119 : ~~A -> ~~(A \/ B).
Proof.
imp_i a1.
neg_i (~A) a2.
hyp a1.
neg_i (A \/ B) a3.
hyp a2.
dis_i1.
hyp a3.
Qed.