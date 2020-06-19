(* Exercise 33 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_033 : ((A /\ B) -> ~C) -> ((A /\ C) -> ~B).
Proof.
imp_i a1.
imp_i a2.
neg_i C a3.
imp_e (A /\ B).
hyp a1.
con_i.
con_e1 C.
hyp a2.
hyp a3.
con_e2 A.
hyp a2.
Qed.