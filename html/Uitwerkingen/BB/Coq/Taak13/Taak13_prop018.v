(* Exercise 18 *) 

Require Import BenB.

Variables A B C D : Prop.


(* Double negation *)

Theorem exercise_018 : (~~(A->B) -> (A->B)).
Proof.
imp_i a1.
neg_e' (~(A -> B)) a2.
hyp a1.
hyp a2.
Qed.
