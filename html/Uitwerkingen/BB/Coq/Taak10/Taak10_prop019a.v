(* Exercise 19a *) 

Require Import BenB.

Variables A B C D : Prop.

(* Doubly negated double negation *)

Theorem exercise_019a : ~~(~~A -> A).
Proof.
dis_e (A \/ ~A) G H.
LEM.
neg_i (~~A -> A) first.
hyp first.
imp_i second.
hyp G.
neg_i (~~A -> A) first.
hyp first.
imp_i second.
neg_e (~A).
hyp second.
hyp H.
Qed.