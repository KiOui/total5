(* Exercise 8 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Conjunction is commutative *)

Theorem exercise_008 : (A /\ B) -> (B /\ A).
Proof.
imp_i a1.
con_i.
con_e2 A.
hyp a1.
con_e1 B.
hyp a1.
Qed.