(* Exercise 44 *) 

Require Import BenB.

Variables A B C D : Prop.

(* The K-combinator *)

Theorem exercise_044 : (A -> B -> C) -> (A -> B) -> A -> C.
Proof.
imp_i a1.
imp_i a2.
imp_i a3.
imp_e B.
imp_e A.
hyp a1.
hyp a3.
imp_e A.
hyp a2.
hyp a3.
Qed.