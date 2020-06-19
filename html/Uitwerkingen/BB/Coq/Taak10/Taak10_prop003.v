(* Exercise 3 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_003 : (~A -> A) \/ ~A.
Proof.
dis_e (A \/ ~A) G H.
LEM.
dis_i1.
imp_i first.
hyp G.
dis_i2.
hyp H.
Qed.
