(* Exercise 24 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Disjunctive syllogism *)

Theorem exercise_024 : ((A \/ B) /\ (~A)) -> B.
Proof.
imp_i a1.
dis_e (A \/ B) a2 a2.
con_e1 (~A).
hyp a1.
neg_e A.
con_e2 (A \/ B).
hyp a1.
hyp a2.
hyp a2.
Qed.