(* Exercise 21 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Classically, everything is false or implied *)

Theorem exercise_021 : ~A \/ (B -> A).
Proof.
dis_e (A \/ ~A) a1 a1.
LEM.
dis_i2.
imp_i a2.
hyp a1.
dis_i1.
hyp a1.
Qed.