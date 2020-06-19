(* Exercise 20 *) 

Require Import BenB.

Definition D := R.
Variables P Q S T : D -> Prop.

Theorem exercise_020 :
  (exists x : D, x in (3,7] /\ P x /\ Q x)
->
  (exists x : D, x in (3,7] /\ P x) /\ (exists x : D, x in (2,7] /\ Q x).
Proof.
imp_i a1.
exi_e (exists x:D, x in (3, 7] /\ P x /\ Q x) a a2.
hyp a1.
con_i.
exi_i a.
con_i.
con_e1 (P a /\ Q a).
hyp a2.
con_e1 (Q a).
con_e2 (a in (3, 7]).
hyp a2.
exi_i a.
con_i.
interval.
con_i.
imp_e (3 < a).
imp_i a3.
lin_solve.
con_e1 (a <= 7).
con_e1 (P a /\ Q a).
hyp a2.
con_e2 (3 < a).
con_e1 (P a /\ Q a).
hyp a2.
con_e2 (P a).
con_e2 (a in (3, 7]).
hyp a2.
Qed.
