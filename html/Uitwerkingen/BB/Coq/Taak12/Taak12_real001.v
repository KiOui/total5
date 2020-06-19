Require Import BenB.

Variable X: R -> Prop.

Theorem getallen_001 :
  (forall t:R, t>=2 -> X t)
->
  (forall t:R, t>=3 -> X t).
Proof.
imp_i a1.
all_i a.
imp_i a2.
imp_e (a >= 2).
all_e (forall t:R, t >=2 -> X t) a.
hyp a1.
lin_solve.
Qed.
