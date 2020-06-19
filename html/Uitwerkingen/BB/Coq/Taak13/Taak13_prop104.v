(* Exercise 104 *) 

Require Import BenB.

Variables A B C D : Prop.

(* de Morgan's conjunction law inverse variant *)

Theorem exercise_104 : (A \/ B) -> ~(~A /\ ~B).
Proof.
imp_i a1.
neg_i (1=1) a2.
dis_e (A \/ B) a3 a3.
hyp a1.
neg_e (A).
con_e1 (~B).
hyp a2.
hyp a3.
neg_e (B).
con_e2 (~A).
hyp a2.
hyp a3.
lin_solve.
Qed.