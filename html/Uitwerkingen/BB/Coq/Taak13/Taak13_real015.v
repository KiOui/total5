(* Exercise 15 *) 

Require Import BenB.

Definition D := R.
Variables P Q S T : D -> Prop.

Theorem exercise_015 :
  ~(forall x : D, x in (3,7] -> P x \/ (Q x -> T x)) 
-> 
  ~(forall x : D, T x).
Proof.
imp_i a1.
neg_i (forall x:D, x in (3, 7] -> P x \/ (Q x -> T x)) a2.
hyp a1.
all_i a.
imp_i a3.
dis_i2.
imp_i a4.
all_e (forall x:D, T x) a.
hyp a2.
Qed.