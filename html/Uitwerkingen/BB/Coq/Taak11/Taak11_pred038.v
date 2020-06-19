(* Exercise 38 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

(* Can the following theorem be proved without the 
   (exists x : D, x = x) in it? 
   If so, how? If not, why not? 
*)

Theorem exercise_038 : 
  (exists x : D, x = x)
-> 
    (forall x, P x \/ Q x)
  -> 
    ~ (forall x, ~ P x /\ ~ Q x).
Proof.
imp_i a1.
imp_i a2.
exi_e (exists y:D, y = y) y a3.
hyp a1.
neg_i (~P y /\ ~Q y) a4.
dis_e (P y \/ Q y) a5 a5.
all_e (forall x:D, P x \/ Q x) y.
hyp a2.
neg_i (P y) a6.
con_e1 (~Q y).
hyp a6.
hyp a5.
neg_i (Q y) a6.
con_e2 (~P y).
hyp a6.
hyp a5.
all_e (forall x:D, ~P x /\ ~Q x) y.
hyp a4.
Qed.