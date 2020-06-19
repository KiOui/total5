(* Exercise 29 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_029 : (forall y, (exists x, (P y -> Q x)) -> (P y -> exists x, Q x)).
Proof.
all_i a.
imp_i a1.
imp_i a2.
exi_e (exists x:D, P a -> Q x) b a3.
hyp a1.
exi_i b.
imp_e (P a).
hyp a3.
hyp a2.
Qed.