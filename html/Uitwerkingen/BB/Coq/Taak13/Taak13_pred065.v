(* Exercise 65 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

(* On a finite domain, existence implies a disjunction
   over different elements; this is less trivial *)

Hypothesis Domain : exists x1 : D, exists x2 : D, exists x3 : D,
  (forall x : D, (x = x1 \/ x = x2 \/ x = x3)) /\ 
  ~(x1 = x2) /\ ~(x1 = x3) /\ ~(x2 = x3).

Hypothesis P_holds : exists x : D, P x.

Theorem exercise_065 : exists x1 : D, exists x2 : D, exists x3 : D, (P x1 \/ P x2 \/ P x3) /\ ~(x1 = x2)
  /\ ~(x1 = x3) /\ ~(x2 = x3).
Proof.
exi_e (exists x1 : D, exists x2 : D, exists x3 : D,
  (forall x : D, (x = x1 \/ x = x2 \/ x = x3)) /\ 
  ~(x1 = x2) /\ ~(x1 = x3) /\ ~(x2 = x3)) a a1.
hyp Domain.
exi_e (exists x2 : D, exists x3 : D,
  (forall x : D, (x = a \/ x = x2 \/ x = x3)) /\ 
  ~(a = x2) /\ ~(a = x3) /\ ~(x2 = x3)) b a2.
hyp a1.
exi_e (exists x3 : D,
  (forall x : D, (x = a \/ x = b \/ x = x3)) /\ 
  ~(a = b) /\ ~(a = x3) /\ ~(b = x3)) c a3.
hyp a2.
exi_i a.
exi_i b.
exi_i c.
con_i.
exi_e (exists x:D, P x) d a4.
hyp P_holds.
dis_e (d = a \/ d = b \/ d = c) a5 a5.
all_e (forall x:D, x = a \/ x = b \/ x = c) d.
con_e1 (a <> b /\ a <> c /\ b <> c).
hyp a3.
dis_i1.
replace a with d.
hyp a4.
dis_e (d = b \/ d = c) a6 a6.
hyp a5.
dis_i2.
dis_i1.
replace b with d.
hyp a4.
dis_i2.
dis_i2.
replace c with d.
hyp a4.
con_e2 (forall x:D, x = a \/ x = b \/ x = c).
hyp a3.
Qed.






