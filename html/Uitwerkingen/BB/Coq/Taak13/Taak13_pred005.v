(* Exercise 5 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_005 : ((exists x : D, P x) -> (forall y : D, Q y)) -> forall x y : D, (P x -> Q y).
Proof.
imp_i a1.
all_i a.
all_i b.
imp_i a2.
all_e (forall y:D, Q y) b.
imp_e (exists x:D, P x).
hyp a1.
exi_i a.
hyp a2.
Qed.