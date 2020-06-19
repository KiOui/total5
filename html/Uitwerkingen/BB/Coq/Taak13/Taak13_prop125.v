(* Exercise 125 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Peirce's law *)

Theorem exercise_125 : ((A -> B) -> A) -> A.
Proof.
imp_i a1.
neg_e' (A) a2.
hyp a2.
imp_e (A -> B).
hyp a1.
imp_i a3.
neg_e A.
hyp a2.
hyp a3.
Qed.