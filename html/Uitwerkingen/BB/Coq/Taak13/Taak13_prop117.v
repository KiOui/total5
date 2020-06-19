(* Exercise 117a *) 

Require Import BenB.

Variables A B C D : Prop.


Theorem exercise_117a : (~~A /\ ~~(A -> B)) -> ~~B.
Proof.
imp_i a1.
neg_i (B) a2.
hyp a2.
imp_e A.
neg_e' (~(A -> B)) a3.
con_e2 (~~A).
hyp a1.
hyp a3.
neg_e' (~A) a4.
con_e1 (~~(A -> B)).
hyp a1.
hyp a4.
Qed.
