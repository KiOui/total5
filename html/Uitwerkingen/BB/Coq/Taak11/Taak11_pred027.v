(* Exercise 27 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_027 :
  (forall x, P x \/ Q x)
->
  (forall x, ~ P x -> Q x).
Proof.
imp_i a1.
all_i y.
imp_i a2.
dis_e (P y \/ Q y) a3 a3.
all_e (forall x:D, P x \/ Q x) y.
hyp a1.
neg_e (P y).
hyp a2.
hyp a3.
hyp a3.
Qed.
