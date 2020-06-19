(* Exercise 120 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_120 : ~~(A /\ B) -> ~~B.
Proof.
imp_i a1.
neg_i (B) a2.
hyp a2.
con_e2 A.
neg_e' (~(A /\ B)) a3.
hyp a1.
hyp a3.
Qed.