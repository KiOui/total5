(* Exercise 55 *) 

Require Import BenB.

Definition D := R.
Variables P Q S T : D -> Prop.

Theorem exercise_055 : ~(forall x, P (x+3) /\ Q (x+4)) /\ (forall x, Q (x-3)) -> ~(forall x, P (x-4)).
Proof.
imp_i a1.
neg_i (forall x:R, P (x+3) /\ Q (x+4)) a2.
con_e1 (forall x:R, Q (x-3)).
hyp a1.
all_i a.
con_i.
replace (a + 3) with ((a + 7) - 4).
all_e (forall x:R, P (x - 4)) (a+7).
hyp a2.
lin_solve.
replace (a + 4) with ((a + 7) - 3).
all_e (forall x:R, Q (x - 3)) (a+7).
con_e2 (~(forall x:R, P (x + 3) /\ Q (x + 4))).
hyp a1.
lin_solve.
Qed.