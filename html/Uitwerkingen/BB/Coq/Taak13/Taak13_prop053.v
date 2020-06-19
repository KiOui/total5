(* Exercise 53 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_053 : ((A -> B) -> B) -> ~A -> B.
Proof.
imp_i a1.
imp_i a2.
imp_e (A -> B).
hyp a1.
imp_i a3.
neg_e (A).
hyp a2.
hyp a3.
Qed.