(* Exercise 82 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_082 : (forall x : D, P x) -> (forall x y z : D, P x /\ P y /\ P z).
Proof.
imp_i a1.
all_i a.
all_i b.
all_i c.
con_i.
all_e (forall x:D, P x) a.
hyp a1.
con_i.
all_e (forall x:D, P x) b.
hyp a1.
all_e (forall x:D, P x) c.
hyp a1.
Qed.