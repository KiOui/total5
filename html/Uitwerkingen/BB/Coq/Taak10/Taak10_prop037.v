(* Exercise 37 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_037 : ((A /\ B) -> C) -> ((A -> C) \/ (B -> C)).
Proof.
imp_i Sigma.
dis_e (A \/ ~A) first first.
LEM.
dis_e (B \/ ~B) second second.
LEM.
dis_i1.
imp_i third.
imp_e (A /\ B).
hyp Sigma.
con_i.
hyp first.
hyp second.
dis_i2.
imp_i third.
neg_e B.
hyp second.
hyp third.
dis_e (B \/ ~B) second second.
LEM.
dis_i1.
imp_i third.
neg_e A.
hyp first.
hyp third.
dis_i1.
imp_i third.
neg_e A.
hyp first.
hyp third.

Qed.
