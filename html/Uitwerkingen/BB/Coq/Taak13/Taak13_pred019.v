(* Exercise 19 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_019 : (exists x : D, P x \/ Q x) -> (exists x : D, P x) \/ (exists x : D, Q x).
Proof.
imp_i a1.
exi_e (exists x:D, P x \/ Q x) a a2.
hyp a1.
dis_e (P a \/ Q a) a3 a3.
hyp a2.
dis_i1.
exi_i a.
hyp a3.
dis_i2.
exi_i a.
hyp a3.
Qed.