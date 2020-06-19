(* Exercise 12 *) 

Require Import BenB.

Variables A B C D : Prop.

(* An absorption law *)

Theorem exercise_012 : (A -> B) -> (A -> (A /\ B)).
Proof.
imp_i Sigma.
imp_i first.
con_i.
hyp first.
imp_e A.
hyp Sigma.
hyp first.
Qed.
