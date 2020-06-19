(* Exercise 121 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_121 : (A -> B) /\ (A -> ~B) -> ~A.
Proof.
imp_i a1.
neg_i (B) a2.
imp_e A.
con_e2 (A -> B).
hyp a1.
hyp a2.
imp_e A.
con_e1 (A -> ~B).
hyp a1.
hyp a2.
Qed.