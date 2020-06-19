(* Exercise 118a *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_118a : ~~(A \/ B) -> (~~A -> ~~C) -> (~~B -> ~~C) -> ~~C.
Proof.
imp_i a1.
imp_i a2.
imp_i a3.
dis_e (A \/ B) a4 a4.
neg_e' (~(A \/ B)) a5.
hyp a1.
hyp a5.
imp_e (~~A).
hyp a2.
neg_i A a5.
hyp a5.
hyp a4.
imp_e (~~B).
hyp a3.
neg_i B a5.
hyp a5.
hyp a4.
Qed.
