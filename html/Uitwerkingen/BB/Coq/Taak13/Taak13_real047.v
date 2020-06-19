(* Exercise 47 *) 

Require Import BenB.

Definition D := R.
Variables P Q S T : D -> Prop.

(* Hint: for this strange theorem you may need to use 'unfold not' in some stage. *)

Theorem exercise_047 : (forall x,  P x ->  x >0) ->  ~P (-12).
Proof.
imp_i a1.
neg_i (-12 < 0) a2.
imp_e (-12 > 0).
imp_i a3.
lin_solve.
imp_e (P (-12)).
all_e (forall x:D, P x -> x > 0) (-12).
hyp a1.
hyp a2.
lin_solve.
Qed.