(* Exercise 109 *) 

Require Import BenB.

Variables A B C D : Prop.

(* de Morgans' disjunction law variant *)

Theorem exercise_109 : ~(~A \/ ~B) -> (A /\ B).
Proof.
imp_i a1.
con_i.
neg_e' (~A \/ ~B) a2.
hyp a1.
dis_i1.
hyp a2.
neg_e' (~A \/ ~B) a2.
hyp a1.
dis_i2.
hyp a2.
Qed.