(* Exercise 57 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_057 : (forall x, forall y, ~ R x y -> R y x) -> (forall x, R x x).
Proof.
imp_i a1.
all_i a.
dis_e (R a a \/ ~R a a) a2 a2.
LEM.
hyp a2.
imp_e (~R a a).
all_e (forall y:D, ~R a y -> R y a) a.
all_e (forall x:D, forall y:D, ~R x y -> R y x) a.
hyp a1.
hyp a2.
Qed.