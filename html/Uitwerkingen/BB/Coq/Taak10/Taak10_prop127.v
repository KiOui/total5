(* Exercise 127 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Weak Peirce's law *)

Theorem exercise_127 : (((((A -> B) -> A) -> A) -> B) -> B).
Proof.
imp_i a1.
imp_e (((A -> B) -> A) -> A).
hyp a1.
imp_i a2.
imp_e (A -> B).
hyp a2.
imp_i a3.
imp_e (((A -> B) -> A) -> A).
hyp a1.
imp_i a4.
hyp a3.
Qed.