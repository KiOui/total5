(* Exercise 40 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Transitivity of implication *)

Theorem exercise_040 : (A -> B) /\ (B -> C) -> (A -> C).
Proof.
imp_i a1.
imp_i a2.
imp_e B.
con_e2 (A -> B).
hyp a1.
imp_e A.
con_e1 (B -> C).
hyp a1.
hyp a2.
Qed.