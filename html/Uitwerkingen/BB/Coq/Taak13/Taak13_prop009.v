(* Exercise 9 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Disjunction is commutative *)

Theorem exercise_009 : (A \/ B) -> (B \/ A).
Proof.
imp_i a1.
dis_e (A \/ B) a2 a2.
hyp a1.
dis_i2.
hyp a2.
dis_i1.
hyp a2.
Qed.