Require Import BenB.

Variable X: R -> Prop.
Variable Y: R -> Prop.

Theorem getallen_002 :
  (X 2)
->
    (forall t:R, X t -> Y (t+3))
  ->
    (Y 5).
Proof.
imp_i a1.
imp_i a2.
imp_e (X (5-3)).
replace 5 with (2+3).
replace (2+3-3) with 2.
all_e (forall t:R, X (t) -> Y (t+3)) 2.
hyp a2.
lin_solve.
lin_solve.
replace (5-3) with 2.
hyp a1.
lin_solve.
Qed.