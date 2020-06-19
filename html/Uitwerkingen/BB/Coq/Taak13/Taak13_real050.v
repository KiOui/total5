(* Exercise 50 *) 

Require Import BenB.

Definition D := R.

Variables P Q S T : D -> Prop.
Variable RR : D -> D -> Prop.

Theorem exercise_050 : 
  (forall y, y in [-37,37] -> P y -> forall x, x in [0,5] -> RR x y)
->
    (forall x, P x)
  ->
    (forall x, forall y, x in [2,4] /\ y in [0,15] -> RR x y).
Proof.
imp_i a1.
imp_i a2.
all_i a.
all_i b.
imp_i a3.
imp_e (a in [0, 5]).
all_e (forall x:R, x in [0, 5] -> RR x b) a.
imp_e (P b).
imp_e (b in [-37, 37]).
all_e (forall y : R, y in  [-37, 37] -> P y -> forall x : R, x in  [0, 5] -> RR x y) b.
hyp a1.
interval.
con_i.
imp_e (0 <= b).
imp_i a4.
lin_solve.
con_e1 (b<=15).
con_e2 (a in [2,4]).
hyp a3.
imp_e (b <=15).
imp_i a4.
lin_solve.
con_e2 (0 <= b).
con_e2 (a in [2, 4]).
hyp a3.
all_e (forall x:D, P x) b.
hyp a2.
interval.
con_i.
imp_e (2 <= a).
imp_i a4.
lin_solve.
con_e1 (a <= 4).
con_e1 (b in [0, 15]).
hyp a3.
imp_e (a <= 4).
imp_i a4.
lin_solve.
con_e2 (2 <= a).
con_e1 (b in [0, 15]).
hyp a3.
Qed.