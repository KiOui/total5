(* Exercise 32 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_032 : (A-> (B -> C)) -> ((B /\ ~C) -> ~A).
Proof.
imp_i a1.
imp_i a2.
neg_i C a3.
con_e2 B.
hyp a2.
imp_e B.
imp_e A.
hyp a1.
hyp a3.
con_e1 (~C).
hyp a2.
Qed.
