(* Exercise 128 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_128 : ~((A -> B) /\ (B -> ~A) /\ (~A -> ~B) /\ (~B -> A)).
Proof.
neg_i (1=1) a1.
dis_e (A \/ ~A) a2 a2.
LEM.
neg_e (A).
imp_e (B).
con_e1 ((~ A -> ~ B) /\ (~ B -> A)).
con_e2 (A -> B).
hyp a1.
imp_e A.
con_e1 ((B -> ~ A) /\ (~ A -> ~ B) /\ (~ B -> A)).
hyp a1.
hyp a2.
hyp a2.
neg_e (A).
hyp a2.
imp_e (~B).
con_e2 (~A -> ~B).
con_e2 (B -> ~A).
con_e2 (A -> B).
hyp a1.
imp_e (~A).
con_e1 (~B -> A).
con_e2 (B -> ~A).
con_e2 (A -> B).
hyp a1.
hyp a2.
lin_solve.
Qed.
