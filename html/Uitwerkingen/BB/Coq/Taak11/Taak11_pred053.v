(* Exercise 53 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.

Theorem exercise_053 : 
    (forall x, ~ P x -> Q x) 
  /\ 
    (exists y, ~ Q y) 
-> 
  (exists y, P y).
Proof.
imp_i a1.
exi_e (exists y:D, ~Q y) a a2.
con_e2 (forall x:D, ~P x -> Q x).
hyp a1.
exi_i a.
neg_e' (Q a) a3.
hyp a2.
imp_e (~P a).
all_e (forall x:D, ~P x -> Q x) a.
con_e1 (exists y:D, ~Q y).
hyp a1.
hyp a3.
Qed.