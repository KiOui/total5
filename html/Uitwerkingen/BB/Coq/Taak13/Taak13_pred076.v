(* Exercise 76 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Hypothesis Domain : exists x1 : D, exists x2 : D, exists x3 : D,
  forall x : D, (x = x1 \/ x = x2 \/ x = x3).

Theorem exercise_076 : (forall x : D, exists y : D, P x \/ P y) -> exists x : D, P x.
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
exi_e (exists y:D, P a \/ P y) d a5.
all_e (forall x:D, exists y:D, P x \/ P y) a.
hyp a4.
dis_e (P a \/ P d) a6 a6.
hyp a5.
exi_i a.
hyp a6.
dis_e (d = a \/ d = b \/ d = c) a7 a7.
all_e (forall x : D, x = a \/ x = b \/ x = c) d.
hyp a3.
exi_i d.
hyp a6.
exi_i d.
hyp a6.
Qed.