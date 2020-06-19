(* Exercise 75 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Hypothesis Domain : exists x1 : D, exists x2 : D, exists x3 : D,
  forall x : D, (x = x1 \/ x = x2 \/ x = x3).

Theorem exercise_075 : 
  (forall x : D, forall y : D, P x \/ P y) 
->
  exists x : D, P x.
Proof.
exi_e (exists x1 : D, exists x2 : D, exists x3 : D,
  forall x : D, (x = x1 \/ x = x2 \/ x = x3)) a a1.
hyp Domain.
exi_e (exists x2 : D, exists x3 : D,
  forall x : D, (x = a \/ x = x2 \/ x = x3)) b a2.
hyp a1.
exi_e (exists x3 : D,
  forall x : D, (x = a \/ x = b \/ x = x3)) c a3.
hyp a2.
imp_i a4.
dis_e (P a \/ P b \/ P c) a5 a5.
dis_i2.
all_e (forall y:D, P b \/ P y) c.
all_e (forall x:D, forall y:D, P x \/ P y) b.
hyp a4.
exi_i a.
hyp a5.
dis_e (P b \/ P c) a6 a6.
hyp a5.
exi_i b.
hyp a6.
exi_i c.
hyp a6.
Qed.