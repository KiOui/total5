(* Exercise 51 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_051 : (forall x, (exists y, R x y) -> P x) /\ (forall x, R x x) -> (forall z, P z).
Proof.
imp_i a1.
all_i a.
imp_e (exists y:D, R a y).
all_e (forall x:D, (exists y:D, R x y) -> P x) a.
con_e1 (forall x:D, R x x).
hyp a1.
exi_i a.
all_e (forall x:D, R x x) a.
con_e2 (forall x:D, (exists y:D, R x y) -> P x).
hyp a1.
Qed.