Require Import BenB.

Variable X: R -> Prop.
Variable Y: R -> Prop.
Variable Z: R -> Prop.

Theorem getallen_006 :
  (forall t:R, X t -> Y (t+2))
->
    (forall t:R, Y t -> Z (t+3))
  ->
    (forall t:R, X t -> Z (t+5)).
Proof.
imp_i a1.
imp_i a2.
all_i a.
imp_i a3.
imp_e (Y (a+2)).
replace (a+5) with (a+2+3).
all_e (forall t:R, Y t -> Z (t+3)) (a+2).
hyp a2.
lin_solve.
imp_e (X a).
all_e (forall t:R, X t -> Y (t + 2)) a.
hyp a1.
hyp a3.
Qed.