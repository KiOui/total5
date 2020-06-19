(* Exercise 36 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_036 : ((A -> C) \/ (B -> C)) -> ((A /\ B) -> C).
Proof.
imp_i a1.
imp_i a2.
dis_e ((A -> C) \/ (B -> C)) a3 a3.
hyp a1.
imp_e A.
hyp a3.
con_e1 B.
hyp a2.
imp_e B.
hyp a3.
con_e2 A.
hyp a2.
Qed.