(* Exercise 1 *) 

Require Import BenB.

Variables A B C D : Prop.

Theorem exercise_001 : (A /\ B) -> A.
Proof.
imp_i a1.
con_e1 B.
hyp a1.
Qed.
