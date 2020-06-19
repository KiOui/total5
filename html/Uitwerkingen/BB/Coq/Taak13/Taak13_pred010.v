(* Exercise 10 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_010 : (exists x : D, P x -> Q x) -> (forall x : D, P x) -> (exists x : D, Q x).
Proof.
imp_i a1.
imp_i a2.
exi_e (exists x:D, P x -> Q x) a a3.
hyp a1.
exi_i a.
imp_e (P a).
hyp a3.
all_e (forall x:D, P x) a.
hyp a2.
Qed.