Require Import BenB.

Variable X: R -> Prop.
Variable Y: R -> Prop.
Variable Z: R -> Prop.

Theorem getallen_009 : 
  (forall t:R, X t -> (exists u:R, u in [t+2,t+5) /\ Y u))
->
    (forall t:R, Y t -> Z (t+3))
  ->
    (forall t:R, X t -> (exists u:R, u in [t+5,t+8) /\ Z u)).
Proof.
imp_i a1.
imp_i a2.
all_i a.
imp_i a3.
exi_e (exists u : R, u in  [a + 2, a + 5) /\ Y u) b a4.
imp_e (X a).
all_e (forall t : R, X t -> exists u : R, u in  [t + 2, t + 5) /\ Y u) a.
hyp a1.
hyp a3.
exi_i (b+3).
con_i.
interval.
con_i.
imp_e (a+2 <= b).
imp_i a5.
lin_solve.
con_e1 (b < a+5).
con_e1 (Y b).
hyp a4.
imp_e (b < a+5).
imp_i a5.
lin_solve.
con_e2 (a+2 <= b).
con_e1 (Y b).
hyp a4.
imp_e (Y b).
all_e (forall t:R, Y t -> Z (t + 3)) b.
hyp a2.
con_e2 (b in [a + 2, a + 5)).
hyp a4.
Qed.