(* Exercise 41 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_041 : 
    (forall x, forall y, R x y -> R y x)
  /\
    (forall x, exists y, R x y)
->
  (forall x, exists y, R y x).
Proof.
imp_i a1.
all_i a.
exi_e (exists y:D, R a y) b a2.
all_e (forall x:D, exists y:D, R x y) a.
con_e2 (forall x:D, forall y:D, R x y-> R y x).
hyp a1.
exi_i b.
imp_e (R a b).
all_e (forall y:D, R a y -> R y a) b.
all_e (forall x:D, forall y:D, R x y -> R y x) a.
con_e1 (forall x:D, exists y:D, R x y).
hyp a1.
hyp a2.
Qed.