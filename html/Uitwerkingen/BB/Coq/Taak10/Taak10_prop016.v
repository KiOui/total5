(* Exercise 16 *) 

Require Import BenB.

Variables A B C D : Prop.

(* Tertium non datur inverted *)

Theorem exercise_016 : ~A \/ A.
Proof.
neg_e' (~A) first.
neg_i (~A \/ A) second.
hyp first.
dis_i1.
hyp second.
neg_i (~A \/ A) second.
hyp first.
dis_i2.
hyp second.
(* It says 'benbcl_proof' instead of 'benb_proof' because
   you are not allowed to use LEM in this proof. *)
Qed.
