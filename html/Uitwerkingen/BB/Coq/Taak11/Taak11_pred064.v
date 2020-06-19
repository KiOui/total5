(* Exercise 64 *) 

Require Import BenB.

Variable D : Set.
Variables P Q S T : D -> Prop.
Variable R : D -> D -> Prop.

(* Without any assumptions on the domain, an existence
   implies the existence for a disjunction (trivial) *)

Hypothesis P_holds : exists x : D, P x.

Theorem exercise_064 : exists x1 : D, exists x2 : D, P x1 \/ P x2.
Proof.
exi_e (exists x:D, P x) a a1.
hyp P_holds.
exi_i a.
exi_i a.
dis_i1.
hyp a1.
Qed.
