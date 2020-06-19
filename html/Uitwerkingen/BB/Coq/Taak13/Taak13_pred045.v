(* Exercise 45 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_045 : ((exists x, P x) -> (forall x, Q x)) -> (forall x, P x -> Q x).
Proof.
imp_i a1.
all_i a.
imp_i a2.
all_e (forall x:D, Q x) a.
imp_e (exists x:D, P x).
hyp a1.
exi_i a.
hyp a2.
Qed.