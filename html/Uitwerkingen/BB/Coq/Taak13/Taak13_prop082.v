(* Exercise 82 *) 

Require Import BenB.

Variables A B C D : Prop.


(* Destructive dilemma *)

Theorem exercise_082 : (A -> B) /\ (C -> D) -> (~B \/ ~D) -> (~A \/ ~C).
Proof.
imp_i a1.
imp_i a2.
dis_e (~B \/ ~D) a3 a3.
hyp a2.
dis_i1.
neg_i B a4.
hyp a3.
imp_e A.
con_e1 (C -> D).
hyp a1.
hyp a4.
dis_i2.
neg_i (D) a4.
hyp a3.
imp_e C.
con_e2 (A -> B).
hyp a1.
hyp a4.
Qed.