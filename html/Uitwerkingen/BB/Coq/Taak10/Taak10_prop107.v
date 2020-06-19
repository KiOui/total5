(* Exercise 107 *) 

Require Import BenB.

Variables A B C D : Prop.

(* de Morgan's conjunction law variant *)

Theorem exercise_107 : ~(A /\ B) -> ~~ (~A \/ ~B).
Proof.
imp_i a1.
neg_i (A /\ B) a2.
hyp a1.
con_i.
neg_e' (~A \/ ~B) a3.
hyp a2.
dis_i1.
hyp a3.
neg_e' (~A \/ ~B) a3.
hyp a2.
dis_i2.
hyp a3.
Qed.
