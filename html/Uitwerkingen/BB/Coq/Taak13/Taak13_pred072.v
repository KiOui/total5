(* Exercise 72 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_072 : ((exists x : D, P x) -> (exists x : D, x=x)).
Proof.
imp_i a1.
exi_e (exists x:D, P x) a a2.
hyp a1.
exi_i a.
lin_solve.
Qed.