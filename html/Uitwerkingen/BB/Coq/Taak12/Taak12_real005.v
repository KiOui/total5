Require Import BenB.

Variable X: R -> Prop.
Variable Y: R -> Prop.

Theorem getallen_005 :
  (forall t:R, (exists u:R, u<=t-5 /\ Y u) -> X t)
->
  (forall t:R, Y t -> X (t+5)).
Proof.
imp_i a1.
all_i a.
imp_i a2.
imp_e (exists u:R, u <= (a+5)-5 /\ Y u).
all_e (forall t:R, (exists u:R, u <= t- 5 /\ Y u) -> X (t)) (a+5).
hyp a1.
exi_i a.
con_i.
lin_solve.
hyp a2.
Qed.