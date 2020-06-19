(* Exercise 74 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

(* A universal statement does not carry existential import,
   but if we know the domain is not empty, then we can
   prove that universal predication implies singular
   predication of a property P *)

Hypothesis Domain : exists x1 : D, exists x2 : D, exists x3 : D,
  forall x : D, (x = x1 \/ x = x2 \/ x = x3).

Theorem exercise_074 : (forall x : D, P x) -> (exists x : D, P x).
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
exi_i a.
all_e (forall x:D, P x) a.
hyp a4.
Qed.