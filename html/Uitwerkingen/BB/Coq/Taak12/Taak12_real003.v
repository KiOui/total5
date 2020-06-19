Require Import BenB.

Variable X: R -> Prop.
Variable Y: R -> Prop.

Theorem getallen_003 :
  (Y 0)
->
    (forall t:R, Y t -> (forall u:R, u>=t+2 -> X u))
  ->
    (forall t:R, t>=3 -> X t).
Proof.
imp_i a1.
imp_i a2.
all_i a.
imp_i a3.
imp_e (a >= 0+2).
all_e (forall u:R, u >= 0 + 2 -> X u) a.
imp_e (Y 0).
all_e (forall t : R, Y t -> forall u : R, u >= t + 2 -> X u) 0.
hyp a2.
hyp a1.
lin_solve.
Qed.
