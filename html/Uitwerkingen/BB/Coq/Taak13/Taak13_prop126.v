(* Exercise 126a *) 

Require Import BenB.

Variables A B C D : Prop.

(* Doubly negated Peirce's law *)

Theorem exercise_126a : (~~(((A -> B) -> A) -> A)).
Proof.
neg_i ((((A -> B) -> A) -> A)) a1.
hyp a1.
imp_i a2.
neg_e' (A) a3.
hyp a3.
imp_e (A -> B).
hyp a2.
imp_i a4.
neg_e (A).
hyp a3.
hyp a4.
Qed.