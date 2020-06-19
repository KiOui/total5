(* Exercise 13 *) 

Require Import BenB.

Definition D := R.
Variables P Q S T : D -> Prop.

Theorem exercise_013 :
  (exists x : D, P (x-2) \/ Q (x+3))
->
    (forall x : D, ~(Q x))
  ->
    (exists x : D, P (x+4))
.
Proof.
imp_i a1.
imp_i a2.
exi_e (exists x:D, P (x - 2) \/ Q (x + 3)) a a3.
hyp a1.
exi_i (a-6).
replace (a-6+4) with (a-2).
neg_e' (Q (a+3)) a5.
all_e (forall x:D, ~Q x) (a+3).
hyp a2.
dis_e (P (a-2) \/ Q (a+3)) a6 a6.
hyp a3.
neg_e (P (a-2)).
hyp a5.
hyp a6.
hyp a6.
lin_solve.
Qed.