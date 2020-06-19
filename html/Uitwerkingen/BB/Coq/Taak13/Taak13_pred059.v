(* Exercise 59 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_059 : (forall x : D, forall y : D, x = y) -> (exists x : D, P x) -> (forall x : D, P x).
Proof.
imp_i a1.
imp_i a2.
all_i a.
exi_e (exists x:D, P x) b a3.
hyp a2.
replace a with b.
hyp a3.
all_e (forall y:D, b = y) a.
all_e (forall x:D, forall y:D, x = y ) b.
hyp a1.
Qed.