(* Exercise 52 *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_052 : (~A /\ ~B) -> ~((A -> B) -> B).
Proof.
imp_i a1.
neg_i (B) a2.
con_e2 (~A).
hyp a1.
imp_e (A -> B).
hyp a2.
imp_i a3.
neg_e (A).
con_e1 (~B).
hyp a1.
hyp a3.
Qed.