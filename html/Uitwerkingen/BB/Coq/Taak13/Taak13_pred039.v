(* Exercise 39 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

Theorem exercise_039 : ~ (exists x, P x \/ Q x) -> (forall x, ~ P x /\ ~ Q x).
Proof.
imp_i a1.
all_i a.
con_i.
neg_e' (exists x:D, P x \/ Q x) a2.
hyp a1.
exi_i a.
dis_i1.
neg_e' (~(P a)) a3.
hyp a2.
hyp a3.
neg_e' (exists x:D, P x \/ Q x) a2.
hyp a1.
exi_i a.
dis_i2.
neg_e' (~(Q a)) a3.
hyp a2.
hyp a3.
Qed.