(* Exercise 26 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_026 : (forall x, R x x -> Q x) /\ (exists x, forall y, R x y) -> (exists x, Q x).
Proof.
imp_i a1.
exi_e (exists x:D, forall y:D, R x y) a a2.
con_e2 (forall x:D, R x x -> Q x).
hyp a1.
exi_i a.
imp_e (R a a).
all_e (forall x:D, R x x -> Q x) a.
con_e1 (exists x:D, forall y:D, R x y).
hyp a1.
all_e (forall y:D, R a y) a.
hyp a2.
Qed.