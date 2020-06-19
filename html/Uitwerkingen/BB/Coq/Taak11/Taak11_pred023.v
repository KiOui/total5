(* Exercise 23 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.

Theorem exercise_023 : 
  ((exists x : D, P x) -> (forall x : D, Q x)) 
-> 
  (forall y : D, P y -> Q y).
Proof.
imp_i a1.
all_i a.
imp_i a2.
all_e (forall x:D, Q x) a.
imp_e (exists x:D, P x).
hyp a1.
exi_i a.
hyp a2.
Qed.