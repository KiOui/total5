Require Import BenB.

Variable X: R -> Prop.
Variable Y: R -> Prop.

Theorem getallen_004 :
  (forall t:R, X t -> Y (t+1) \/ Y (t+2))
->
  (forall t:R, X t -> (exists u:R, u>=t+1 /\ Y u)).
Proof.
imp_i a1.
all_i a.
imp_i a2.
dis_e (Y (a+1) \/ Y (a+2)) a3 a3.
imp_e (X a).
all_e (forall t : R, X t -> Y (t + 1) \/ Y (t + 2)) a.
hyp a1.
hyp a2.
exi_i (a+1).
con_i.
lin_solve.
hyp a3.
exi_i (a+2).
con_i.
lin_solve.
hyp a3.
Qed.