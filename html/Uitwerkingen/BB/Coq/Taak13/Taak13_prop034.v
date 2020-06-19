(* Exercise 34 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_034 : C -> ((~A -> ~C) -> ((A -> ~C) -> B)).
Proof.
imp_i a1.
imp_i a2.
imp_i a3.
neg_e C.
dis_e (A \/ ~A) a4 a4.
LEM.
imp_e A.
hyp a3.
hyp a4.
imp_e (~A).
hyp a2.
hyp a4.
hyp a1.
Qed.