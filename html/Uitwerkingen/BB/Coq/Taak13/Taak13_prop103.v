(* Exercise 103 *) 

Require Import BenB.

Variables A B C D : Prop.

(* de Morgan's conjunction law inverse *)

Theorem exercise_103 : (~A \/ ~B) -> ~(A /\ B).
Proof.
imp_i a1.
dis_e (~A \/ ~B) a2 a2.
hyp a1.
neg_i A a3.
hyp a2.
con_e1 B.
hyp a3.
neg_i B a3.
hyp a2.
con_e2 A.
hyp a3.
Qed.