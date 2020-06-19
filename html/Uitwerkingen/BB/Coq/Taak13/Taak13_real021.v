(* Exercise 21 *) 

Require Import BenB.

Definition D:=R.

Variables P Q S T : D -> Prop.

Theorem exercise_021 : ~((forall x : D, P (x+2)) /\ (exists x : D, ~ P (x-3))).
Proof.
neg_i (forall x:D, P (x - 3)) a1.
exi_e (exists x:D, ~P (x - 3)) a a2.
con_e2 (forall x:D, P (x+2)).
hyp a1.
neg_i (P (a-3)) a3.
hyp a2.
all_e (forall x:D, P (x - 3)) a.
hyp a3.
all_i a.
neg_e' (forall x:D, P (x-3)) a2.
neg_i (P (a-3)) a3.
hyp a2.
all_e (forall x:D, P (x-3)) a.
hyp a3.
all_i b.
replace (b - 3) with (b - 5 + 2).
all_e (forall x:D, P (x + 2)) (b - 5).
con_e1 (exists x:D, ~P (x - 3)).
hyp a1.
lin_solve.
Qed.