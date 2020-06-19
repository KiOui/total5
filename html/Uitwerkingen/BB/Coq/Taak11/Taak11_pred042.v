(* Exercise 42 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_042 :
    (exists x, P x \/ Q x)
  /\
    ~(exists x, P x)
->
  ~(forall x, Q x -> P x).
Proof.
imp_i a1.
exi_e (exists x:D, P x \/ Q x) y a2.
con_e1 (~(exists x:D, P x)).
hyp a1.
neg_i (P y) a3.
neg_i (exists x:D, P x) a4.
con_e2 (exists x:D, P x \/ Q x).
hyp a1.
exi_i y.
hyp a4.
imp_e (Q y).
all_e (forall x:D, Q x -> P x) y.
hyp a3.
neg_e' (P y) a4.
neg_i (exists x:D, P x) a5.
con_e2 (exists x:D, P x \/ Q x).
hyp a1.
exi_i y.
hyp a5.
dis_e (P y \/ Q y) a5 a5.
hyp a2.
hyp a5.
neg_e (Q y).
hyp a4.
hyp a5.
Qed.