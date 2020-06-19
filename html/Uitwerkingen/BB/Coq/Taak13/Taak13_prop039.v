(* Exercise 39 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_039 : ((A -> (B /\ C)) /\ ((B \/ C) -> ~A)) -> ~A.
Proof.
imp_i a1.
neg_i A a2.
imp_e (B \/ C).
con_e2 (A -> B /\ C).
hyp a1.
dis_i1.
con_e1 C.
imp_e A.
con_e1 (B \/ C -> ~A).
hyp a1.
hyp a2.
hyp a2.
Qed.