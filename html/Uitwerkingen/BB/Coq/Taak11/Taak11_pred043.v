(* Exercise 43 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_043 : 
    (exists x, P x -> Q x) 
  /\
    (forall x, ~(P x /\ Q x)) 
-> 
  (exists x, ~ P x).
Proof.
imp_i a1.
exi_e (exists x:D, P x -> Q x) y a2.
con_e1 (forall x:D, ~(P x /\ Q x)).
hyp a1.
exi_i y.
neg_i (Q y) a3.
neg_i (P y /\ Q y) a4.
all_e (forall x:D, ~(P x /\ Q x)) y.
con_e2 (exists x:D, P x-> Q x).
hyp a1.
con_i.
hyp a3.
hyp a4.
imp_e (P y).
hyp a2.
hyp a3.
Qed.