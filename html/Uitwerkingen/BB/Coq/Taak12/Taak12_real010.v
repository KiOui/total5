Require Import BenB.

Variable X: R -> Prop.
Variable Y: R -> Prop.


Theorem getallen_010 :
  (forall t:R, X t -> (forall u:R, u<t-5 -> Y u))
->
  (forall t:R, (exists u:R, t+5<u /\ X u) -> Y t).
Proof.
imp_i a1.
all_i a.
imp_i a2.
exi_e (exists u:R, a + 5 < u /\ X u) b a3.
hyp a2.
imp_e (a < b - 5).
all_e (forall u:R, u < b - 5 -> Y u) a.
imp_e (X b).
all_e (forall t : R, X t -> forall u : R, u < t - 5 -> Y u) b.
hyp a1.
con_e2 (a + 5 < b).
hyp a3.
imp_e (a + 5 < b).
imp_i a4.
lin_solve.
con_e1 (X b).
hyp a3.
Qed.