(* Exercise 38 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_038 : ~((A /\ (C -> ~B)) /\ (B /\ (~C -> ~A))).
Proof.
neg_i (1=1) a1.
dis_e (C \/ ~C) a2 a2.
LEM.
neg_e B.
imp_e C.
con_e2 A.
con_e1 (B /\ (~C -> ~A)).
hyp a1.
hyp a2.
con_e1 (~C -> ~A).
con_e2 (A /\ (C -> ~B)).
hyp a1.
neg_e A.
imp_e (~C).
con_e2 B.
con_e2 (A /\ (C -> ~B)).
hyp a1.
hyp a2.
con_e1 (C -> ~B).
con_e1 (B /\ (~C -> ~A)).
hyp a1.
lin_solve.
Qed.