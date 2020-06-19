(* Exercise 2 *) 

Require Import BenB.

Variables A B C D : Prop.

Theorem exercise_002 : (~A -> A) -> A.
Proof.
imp_i Sigma.
neg_e' A first.
hyp first.
imp_e (~A).
hyp Sigma.
hyp first.
Qed.