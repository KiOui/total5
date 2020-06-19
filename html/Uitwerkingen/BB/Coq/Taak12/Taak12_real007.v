Require Import BenB.

Variable X: R -> Prop.
Variable Y: R -> Prop.

Theorem getallen_007 :
  (forall t:R, X t -> (exists u:R, u in (t+2,t+5] /\ Y u))
->
  (forall t:R, X t -> (exists u:R, u in (t+1,t+6] /\ Y u)).
Proof.
imp_i a1.
all_i a.
imp_i a2.
exi_e (exists u : R, u in  (a + 2, a + 5] /\ Y u) b a3.
imp_e (X a).
all_e (forall t : R, X t -> exists u : R, u in  (t + 2, t + 5] /\ Y u) a.
hyp a1.
hyp a2.
exi_i b.
con_i.
interval.
con_i.
imp_e (a+2 < b).
imp_i a4.
lin_solve.
con_e1 (b <= a+5).
con_e1 (Y b).
hyp a3.
imp_e (b <= a+5).
imp_i a4.
lin_solve.
con_e2 (a+2 < b).
con_e1 (Y b).
hyp a3.
con_e2 (b in (a + 2, a + 5]).
hyp a3.
Qed.