(* Exercise 6 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_006 : (forall x : D, P x -> Q x) /\ (exists x : D, P x) -> exists x : D, Q x.
Proof.
imp_i a1.
exi_e (exists x:D, P x) a a2.
con_e2 (forall x:D, P x -> Q x).
hyp a1.
exi_i a.
imp_e (P a).
all_e (forall x:D, P x -> Q x) a.
con_e1 (exists x:D, P x).
hyp a1.
hyp a2.
Qed.