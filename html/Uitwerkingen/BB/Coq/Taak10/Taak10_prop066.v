(* Exercise 66 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_066 : (A -> B \/ C) -> ((A -> B) \/ C).
Proof.
imp_i Sigma.
dis_e (C \/ ~C) first first.
LEM.
dis_i2.
hyp first.
dis_i1.
imp_i second.
dis_e (B \/ C) third third.
imp_e A.
hyp Sigma.
hyp second.
hyp third.
neg_e C.
hyp first.
hyp third.


Qed.
