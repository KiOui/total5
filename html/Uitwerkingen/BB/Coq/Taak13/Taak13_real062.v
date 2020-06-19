(* Exercise 62 *) 

Require Import BenB.

Definition D := R.
Variables P Q S T : D -> Prop.
Variable RR : D -> D -> Prop.

Theorem exercise_062 : 
  (forall x, x in [0,7] ->  ~exists y, y in (x, x+4) /\ RR x y) 
-> 
  (forall x, x in [0,7] -> forall y, y in (x+2,x+3) -> ~ RR x (y+1/2)).
Proof.
imp_i a1.
all_i a.
imp_i a2.
all_i b.
imp_i a3.
neg_i (exists y:R, y in (a, a+4) /\ RR a y) a4.
imp_e (a in [0, 7]).
all_e (forall x : R, x in  [0, 7] -> ~ (exists y : R, y in  (x, x + 4) /\ RR x y)) a.
hyp a1.
hyp a2.
exi_i (b+ 1/2).
con_i.
interval.
con_i.
imp_e (a + 2 < b).
imp_i a5.
lin_solve.
con_e1 (b < a + 3).
hyp a3.
imp_e (b < a + 3).
imp_i a5.
lin_solve.
con_e2 (a+2 < b).
hyp a3.
hyp a4.
Qed.