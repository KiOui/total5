(* Exercise 77 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_077 : (exists x : D, forall y : D, P x \/ P y) -> exists x : D, P x.
Proof.
imp_i a1.
exi_e (exists x:D, forall y:D, P x \/ P y) a a2.
hyp a1.
dis_e (P a \/ P a) a3 a3.
all_e (forall y:D, P a \/ P y) a.
hyp a2.
exi_i a.
hyp a3.
exi_i a.
hyp a3.
Qed.