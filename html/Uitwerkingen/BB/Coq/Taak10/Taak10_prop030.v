(* Exercise 30 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_030 : (~A /\ ~B) -> ~((A -> B) -> B).
Proof.
imp_i Sigma.
neg_i B first.
con_e2 (~A).
hyp Sigma.
neg_e (A).
con_e1 (~B).
hyp Sigma.
neg_e' B second.
con_e2 (~A).
hyp Sigma.
imp_e (A -> B).
hyp first.
imp_i third.
neg_e A.
hyp second.
hyp third.
Qed.