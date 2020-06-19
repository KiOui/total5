(* Exercise 135 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Prove the Law of the Excluded Middle (Tertium Non Datur) from the 
   Double Negation Law, using only constructive steps otherwise -
   the Double Negation Law is not available as the tactic "dn" in this exercise,
   use "apply Double_Negation" instead *)

Hypothesis Double_Negation : forall X : Prop, ~~X -> X.

Theorem exercise_135 : A \/ ~A.
Proof.
LEM.

Qed.