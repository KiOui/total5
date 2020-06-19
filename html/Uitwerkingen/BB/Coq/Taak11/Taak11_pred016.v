(* Exercise 16 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_016 :
  (forall x : D, P x \/ R x x)
->
    (forall x : D, P x -> (exists y : D, R x y /\ R y x))
  ->
    forall x : D, exists y : D, R x y.
Proof.
imp_i a1.
imp_i a2.
all_i a.
dis_e (P a \/ R a a) a3 a3.
all_e (forall x:D, P x \/ R x x) a.
hyp a1.
exi_e (exists y:D, R a y /\ R y a) b a4.
imp_e (P a).
all_e (forall x:D, P x -> exists y:D, R x y /\ R y x) a.
hyp a2.
hyp a3.
exi_i b.
con_e1 (R b a).
hyp a4.
exi_i a.
hyp a3.
Qed.
