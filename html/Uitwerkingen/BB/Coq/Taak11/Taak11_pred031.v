(* Exercise 31 *) 

Require Import BenB.

(*Variable D : Set.*)
Definition D:= R.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_031 : 
  (forall x, P x /\ Q x)
-> 
  (forall x, P x \/ exists y, R x y).
Proof.
imp_i a1.
all_i y.
dis_i1.
con_e1 (Q y).
all_e (forall x:D, P x /\ Q x) y.
hyp a1.
Qed.