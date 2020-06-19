(* Exercise 48 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_048 : (A -> (A -> B)) -> (A -> B).
Proof.
imp_i a1.
imp_i a2.
imp_e A.
imp_e A.
hyp a1.
hyp a2.
hyp a2.
Qed.