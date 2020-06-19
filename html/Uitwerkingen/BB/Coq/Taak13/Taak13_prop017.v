(* Exercise 17 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_017 : (A -> ~~A).
Proof.
imp_i a1.
neg_i (A) a2.
hyp a2.
hyp a1.
Qed.