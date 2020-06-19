(* Exercise 27 *) 

Require Import BenB.

Definition D := Z. (* Integers! *)

Variables P Q S T : D -> Prop.

(* Note that this theorem does not hold if D were 
   real numbers instead of integers. *)

(* We have to tell Coq explicitly that we are dealing with integers: *)
Open Scope Z_scope. 

Theorem exercise_027 :
  (forall x:D, x in [3,7] -> P x \/ Q x)
->
  (forall x:D, x in (2,8) -> ~ P x -> Q x).
Proof.
imp_i a1.
all_i a.
imp_i a2.
imp_i a3.
dis_e (P a \/ Q a) a4 a4.
imp_e (a in [3, 7]).
all_e (forall x:D, x in [3, 7] -> P x \/ Q x) a.
hyp a1.
interval.
con_i.
imp_e (2 < a).
imp_i a4.
lin_solve.
con_e1 (a < 8).
hyp a2.
imp_e (a < 8).
imp_i a4.
lin_solve.
con_e2 (2 < a).
hyp a2.
neg_e (P a).
hyp a3.
hyp a4.
hyp a4.
Qed.
