(* Exercise 18 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_018 : (exists x : D, P x) \/ (exists x : D, Q x) -> (exists x : D, P x \/ Q x).
Proof.
imp_i a1.
dis_e ((exists x:D, P x) \/ (exists x:D, Q x)) a2 a2.
hyp a1.
exi_e (exists x:D, P x) y a3.
hyp a2.
exi_i y.
dis_i1.
hyp a3.
exi_e (exists x:D, Q x) y a3.
hyp a2.
exi_i y.
dis_i2.
hyp a3.

Qed.