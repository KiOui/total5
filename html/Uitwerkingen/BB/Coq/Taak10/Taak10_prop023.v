(* Exercise 23 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_023 : (~(A -> B) /\ B) -> ~A.
Proof.
imp_i Sigma.
neg_i (A -> B) a.
con_e1 B.
hyp Sigma.
imp_i b.
con_e2 (~(A -> B)).
hyp Sigma.
Qed.
