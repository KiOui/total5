Require Import BenB.

(* Domeinen *)
Variables S: Set. (* Alle studenten van de RU. *)
Variables V: Set. (* Alle vakken bij FNWI. *)

(* Constanten *)
Variable BB: V. (* Beweren en Bewijzen *)
Variable WS: V. (* Wiskundige Structuren *)
Variable FD: V. (* Formeel Denken *)

(* Predikaten *)
Variable GNR (* s v *): S -> V  -> Prop.
  (* Student s gaat naar responsiecolleges van vak v. *)
  (* Presentielijsten van die responsiecolleges bekijken. *)

Variable HV (* s v *): S -> V -> Prop.
  (* Student s haalt vak v. *)
  (* Cijfer in Osiris opzoeken. *)

Theorem ResponsieCollegesBBLonen:
      (forall s:S, GNR s BB -> HV s BB)
    /\
      (exists s:S, GNR s BB)
  ->
      (exists s:S, HV s BB)
.
Proof.
imp_i a1.
exi_e (exists b:S, GNR b BB) b a2.
con_e2 (forall s:S, GNR s BB -> HV s BB).
hyp a1.
exi_i b.
imp_e (GNR b BB).
all_e (forall b:S, GNR b BB -> HV b BB) b.
con_e1 (exists s:S, GNR s BB).
hyp a1.
hyp a2.
Qed.
