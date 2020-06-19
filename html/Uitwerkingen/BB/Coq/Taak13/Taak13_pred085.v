(* Exercise 85 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_085 : forall x : D, forall y : D, forall z : D, x = y /\ y = z -> x = z.
Proof.
all_i a.
all_i b.
all_i c.
imp_i a1.
replace c with b.
con_e1 (b = c).
hyp a1.
con_e2 (a = b).
hyp a1.
Qed.