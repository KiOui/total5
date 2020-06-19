(* Exercise 47 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Variable A : Prop.

Theorem exercise_047 : (forall x, P x -> A) -> (exists x, P x) -> A.
Proof.
imp_i a1.
imp_i a2.
exi_e (exists x:D, P x) a a3.
hyp a2.
imp_e (P a).
all_e (forall x:D, P x -> A) a.
hyp a1.
hyp a3.
Qed.