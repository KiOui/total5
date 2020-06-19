(* Exercise 2 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Variable a : D.

Theorem exercise_002 : (P a) -> (exists x:D, P x).
Proof.
imp_i a1.
exi_i a.
hyp a1.
Qed.