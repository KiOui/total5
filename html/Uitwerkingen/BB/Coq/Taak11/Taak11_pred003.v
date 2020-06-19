(* Exercise 3 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_003 :
  (forall x y : D, R x y -> ~ R y x)
->
  forall x : D, ~ R x x.
Proof.
imp_i a1.
all_i a.
neg_i (R a a) a2.
imp_e (R a a).
all_e (forall y:D, R a y -> ~R y a) a.
all_e (forall x:D, forall y:D, (R x y -> ~R y x)) a.
hyp a1.
hyp a2.
hyp a2.
Qed.