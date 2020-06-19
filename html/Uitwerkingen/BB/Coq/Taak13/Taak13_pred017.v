(* Exercise 17 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_017 : ~(exists x : D, forall y : D, (R y x -> ~ R x y) /\ (~ R x y -> R y x)).
Proof.
neg_i (1=1) a1.
exi_e (exists x : D, forall y : D, (R y x -> ~ R x y) /\ (~ R x y -> R y x)) a a2.
hyp a1.
dis_e (R a a \/ ~R a a) a3 a3.
LEM.
neg_e (R a a).
imp_e (R a a).
con_e1 (~R a a -> R a a).
all_e (forall y:D, (R y a -> ~ R a y) /\ (~ R a y -> R y a)) a.
hyp a2.
hyp a3.
hyp a3.
neg_e (R a a).
hyp a3.
imp_e (~R a a).
con_e2 (R a a -> ~R a a).
all_e (forall y : D, (R y a -> ~ R a y) /\ (~ R a y -> R y a)) a.
hyp a2.
hyp a3.
lin_solve.
Qed.