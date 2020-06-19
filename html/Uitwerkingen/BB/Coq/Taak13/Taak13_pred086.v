(* Exercise 086 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.


Theorem exercise_001 : (forall x:D, P x -> exists y : D, P y).
Proof.
all_i a.
imp_i a1.
exi_i a.
hyp a1.
Qed.