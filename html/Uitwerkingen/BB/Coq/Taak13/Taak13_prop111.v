(* Exercise 111 *) 

Require Import BenB.

Variables A B C D : Prop.

(* de Morgan's disjunction law variant *)

Theorem exercise_111 : (A /\ B) -> ~(~A \/ ~B).
Proof.
imp_i a1.
neg_i (A /\ B) a2.
dis_e (~A \/ ~B) a3 a3.
hyp a2.
neg_e (A).
hyp a3.
con_e1 B.
hyp a1.
neg_e (B).
hyp a3.
con_e2 A.
hyp a1.
hyp a1.
Qed.