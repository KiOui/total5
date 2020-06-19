(* Exercise 101b *) 

Require Import BenB.

Variables A B C D : Prop.


(* Double Contrapositive, give a constructive proof *)

Theorem exercise_101b : (A -> B) -> (~~A -> ~~B).
Proof.
imp_i a1.
imp_i a2.
neg_i B a3.
hyp a3.
imp_e A.
hyp a1.
neg_e' (~A) a4.
hyp a2.
hyp a4.
Qed.
