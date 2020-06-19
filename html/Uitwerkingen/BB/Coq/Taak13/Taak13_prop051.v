(* Exercise 51 *) 

Require Import BenB.

Variables A B C D : Prop.

Theorem exercise_051 : (A \/ B) -> ((A -> B) -> B).
Proof.
imp_i a1.
imp_i a2.
dis_e (A \/ B) a3 a3.
hyp a1.
imp_e A.
hyp a2.
hyp a3.
hyp a3.
Qed.