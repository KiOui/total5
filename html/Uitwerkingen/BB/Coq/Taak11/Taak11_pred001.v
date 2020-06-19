(* Exercise 1 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Variable a : D.

Theorem exercise_001 : (forall x:D, P x) -> P a.
Proof.
imp_i a1.
all_e (forall x:D, P x) a.
hyp a1.
Qed.
