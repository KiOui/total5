(* Exercise 47 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_047 : A -> (A -> (B -> A)).
Proof.
imp_i a1.
imp_i a2.
imp_i a3.
hyp a1.
Qed.