
(* Exercise 66 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.


(* This theorem shows that on a domain of at most two elements,
   any instantation of three variables will have a duplicate.
   Try the same for a domain of three elements, if you have
   a spare afternoon, the length of the proof explodes with
   the number of elements of D.
*)

Hypothesis Domain : exists x1 : D, exists x2 : D, forall x : D,
  (x = x1 \/ x = x2).

Theorem exercise_066 : forall x1 : D, forall x2 : D, forall x3 : D, (x1=x2 \/ x1=x3 \/ x2=x3).
Proof.
exi_e (exists x1 : D, exists x2 : D, forall x : D,
  (x = x1 \/ x = x2)) a a1.
  hyp Domain.
exi_e (exists x2 : D, forall x : D,
  (x = a \/ x = x2)) b a2.
hyp a1.
all_i c.
all_i d.
all_i e.
dis_e (c = a \/ c = b) a3 a3.
all_e (forall x:D, x = a \/ x = b) c.
hyp a2.
replace c with a.
dis_e (d = a \/ d = b) a4 a4.
all_e (forall x:D, x = a \/ x = b) d.
hyp a2.
replace d with a.
dis_i1.
lin_solve.
replace d with b.
dis_e (e = a \/ e = b) a5 a5.
all_e (forall x:D, x = a \/ x = b) e.
hyp a2.
replace e with a.
dis_i2.
dis_i1.
lin_solve.
replace e with b.
dis_i2.
dis_i2.
lin_solve.
dis_e (d = a \/ d = b) a4 a4.
all_e (forall x:D, x = a \/ x = b) d.
hyp a2.
replace d with a.
dis_e (e = a \/ e = b) a5 a5.
all_e (forall x:D, x = a \/ x = b) e.
hyp a2.
replace e with a.
dis_i2.
dis_i2.
lin_solve.
replace e with b.
replace c with b.
dis_i2.
dis_i1.
lin_solve.
replace c with b.
replace d with b.
dis_i1.
lin_solve.
Qed.
