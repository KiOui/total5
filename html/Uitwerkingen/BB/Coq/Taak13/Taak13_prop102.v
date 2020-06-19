(* Exercise 102 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Inverse Double Contrapositive *)

Theorem exercise_102 : (~~A -> ~~B) -> (A -> B).
Proof.
imp_i a1.
imp_i a2.
neg_e' (~B) a3.
imp_e (~~A).
hyp a1.
neg_i A a4.
hyp a4.
hyp a2.
hyp a3.
Qed.