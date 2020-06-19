(* Exercise 133 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Prove the Double Negation law from Peirce's law 
   but using only constructive steps otherwise *)

Hypothesis Peirce : forall X Y : Prop, ((X -> Y) -> X) -> X.

Theorem exercise_133 : ~~A -> A.
Proof.
imp_i a1.
neg_e' (~A) a2.
hyp a1.
hyp a2.
Qed.