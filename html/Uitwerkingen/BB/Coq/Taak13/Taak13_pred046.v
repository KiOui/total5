(* Exercise 46 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Variable A : Prop.

Theorem exercise_046 : (exists x, P x -> A) -> (forall x, P x) -> A.
Proof.
imp_i a1.
imp_i a2.
exi_e (exists x:D, P x -> A) a a3.
hyp a1.
imp_e (P a).
hyp a3.
all_e (forall x:D, P x) a.
hyp a2.
Qed.