(* Exercise 20a *) 

Require Import BenB.

Variables A B C D : Prop.

(* Double negation with an extra negation *)

Theorem exercise_020a : ~~~A -> ~A.
Proof.
imp_i first.
neg_e' (~A) second.
hyp second.
neg_i (~~A) third.
hyp first.
hyp second.
Qed.
