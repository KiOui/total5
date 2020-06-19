(* Exercise 37 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_037 : (forall x, P x) \/ (forall x, Q x) -> (forall x, P x \/ Q x).
Proof.
imp_i a1.
dis_e ((forall x : D, P x) \/ (forall x : D, Q x)) a2 a2.
hyp a1.
all_i a.
dis_i1.
all_e (forall x:D, P x) a.
hyp a2.
all_i a.
dis_i2.
all_e (forall x:D, Q x) a.
hyp a2.
Qed.