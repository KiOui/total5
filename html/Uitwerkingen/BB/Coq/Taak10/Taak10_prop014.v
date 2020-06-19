(* Exercise 14 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_014 : (~(A /\ A) -> (~A \/ ~A)).
Proof.
imp_i Sigma.
dis_i1.
neg_e' (A /\ A) first.
hyp Sigma.
con_i.
neg_e' (~A) second.
hyp first.
hyp second.
neg_e' (~A) second.
hyp first.
hyp second.


Qed.
