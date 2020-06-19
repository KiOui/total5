(* Exercise 101a *) 

Require Import BenB.

Variables A B C D : Prop.


(* Double Contrapositive, give a classical proof *)

Theorem exercise_101a : (A -> B) -> (~~A -> ~~B).
Proof.
imp_i Sigma.
imp_i first.
neg_i B second.
hyp second.
imp_e A.
hyp Sigma.
neg_e' (~A) third.
hyp first.
hyp third.

Qed.
