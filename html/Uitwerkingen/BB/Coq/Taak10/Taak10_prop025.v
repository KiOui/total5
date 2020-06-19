(* Exercise 25 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_025 : A -> (~B \/ (A /\ B)).
Proof.
imp_i Sigma.
dis_e (B \/ ~B) G H.
LEM.
dis_i2.
con_i.
hyp Sigma.
hyp G.
dis_i1.
hyp H.
Qed.
