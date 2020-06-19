(* Exercise 5 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_005 : (A /\ B) -> (A \/ B).
Proof.
imp_i Sigma.
dis_i1.
con_e1 B.
hyp Sigma.
Qed.
