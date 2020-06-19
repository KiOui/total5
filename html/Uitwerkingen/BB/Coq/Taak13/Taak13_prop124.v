(* Exercise 124a *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_124a : ~~(((A \/ (A -> B)) -> B) -> B).
Proof.
neg_i ((A \/ (A -> B) -> B) -> B) a1.
hyp a1.
imp_i a2.
imp_e (A \/ (A -> B)).
hyp a2.
dis_e (A \/ ~A) a3 a3.
LEM.
dis_i1.
hyp a3.
dis_i2.
imp_i a4.
neg_e' A a5.
hyp a3.
hyp a4.
Qed.