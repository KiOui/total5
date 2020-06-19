(* Exercise 56 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_056 : (forall x, P x -> forall y, R y x) -> ~(exists x, P x /\ ~ R x x).
Proof.
imp_i a1.
neg_i (1=1) a2.
exi_e (exists x:D, P x /\ ~R x x) a a3.
hyp a2.
neg_e (R a a).
con_e2 (P a).
hyp a3.
all_e (forall y:D, R y a) a.
imp_e (P a).
all_e (forall x:D, P x -> forall y:D, R y x) a.
hyp a1.
con_e1 (~R a a).
hyp a3.
lin_solve.
Qed.