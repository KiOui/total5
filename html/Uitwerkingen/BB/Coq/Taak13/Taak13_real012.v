(* Exercise 12 *) 

Require Import BenB.

Definition D := R.
Variables P Q S T : D -> Prop.
Variable RR : D -> D -> Prop.

Theorem exercise_012 : 
  (forall x : D, (exists y : D, exists z:D, RR (y+z) x) -> P x) 
-> 
    (exists x : D, exists y : D, RR (x+y) y) 
  -> 
    (exists x : D, P (x+7)).
Proof.
imp_i a1.
imp_i a2.
exi_e (exists x:D, exists y:D, RR (x + y) y) a a3.
hyp a2.
exi_e (exists y:D, RR (a + y) y) b a4.
hyp a3.
exi_i (b-7).
replace (b-7+7) with b.
imp_e (exists y : D, exists z : D, RR (y + z) b).
all_e (forall x : D, (exists y : D, exists z : D, RR (y + z) x) -> P x) b.
hyp a1.
exi_i a.
exi_i b.
hyp a4.
lin_solve.
Qed.