(* Exercise 45 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_045 : A -> (B -> B).
Proof.
imp_i a1.
imp_i a2.
hyp a2.
Qed.