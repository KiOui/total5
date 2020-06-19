(* Exercise 83 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Hypothesis R_symmetric : forall x y : D, R x y -> R y x.
Hypothesis R_transitive : forall x y z : D, (R x y /\ R y z -> R x z).

Theorem exercise_083 : forall x : D, (exists y, R x y) -> R x x.
Proof.
all_i a.
imp_i a1.
exi_e (exists y:D, R a y) b a2.
hyp a1.
imp_e (R a b /\ R b a).
all_e (forall z:D, (R a b /\ R b z -> R a z)) a.
all_e (forall y:D, forall z:D, (R a y /\ R y z -> R a z)) b.
all_e (forall x:D, forall y:D, forall z:D, (R x y /\ R y z -> R x z)) a.
hyp R_transitive.
con_i.
hyp a2.
imp_e (R a b).
all_e (forall y:D, R a y -> R y a) b.
all_e (forall x:D, forall y:D, R x y -> R y x) a.
hyp R_symmetric.
hyp a2.
Qed.