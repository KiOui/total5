(* Exercise 63a *) 

Require Import BenB.

Variables A B C D : Prop.

Theorem exercise_063a : ~~((~A -> B) /\ (~A -> ~B) -> A).
Proof.
neg_i (((~A -> B) /\ (~A -> ~B) -> A)) a1.
hyp a1.
imp_i a2.
neg_e' (B) a3.
imp_e (~A).
con_e2 (~A -> B).
hyp a2.
hyp a3.
imp_e (~A).
con_e1 (~A -> ~B).
hyp a2.
hyp a3.
Qed.
