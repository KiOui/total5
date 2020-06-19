Require Import BenB.

(*
  Eerst leggen we de basisproposities vast.
*)

Variable G1: Prop. (* Het goud zit in koffer 1. *)
Variable G2: Prop. (* Het goud zit in koffer 2. *)
Variable G3: Prop. (* Het goud zit in koffer 3. *)
Variable G4: Prop. (* Het goud zit in koffer 4. *)

(* 
  Daarna leggen we de daaruit afgeleide uitspraken vast.
*)
  
Definition K1 := G2     . (* Het goud zit in koffer 2. *)
Definition K2 := ~G1 /\ ~G3 /\ ~G4      . (* Alle andere koffers zijn leeg. *)
Definition K3 := G3     . (* Deze koffer bevat goud. *)
Definition K4 := ~G4      . (* Deze koffer is leeg. *)

(* 
  En vervolgens maken we wat hulpdefinities.

  Vul de definities aan waar dat nodig is!
*)

Definition erIsMinimaalEenKofferMetGoud :=
G1 \/ G2 \/ G3 \/ G4.

Definition erIsMaximaalEenKofferMetGoud :=
~(G1\/G2\/G3) \/ ~(G1\/G2\/G4) \/ ~(G1\/G3\/G4) \/ ~(G2\/G3\/G4).

Definition erIsPreciesEenKofferMetGoud :=
  erIsMinimaalEenKofferMetGoud
/\
  erIsMaximaalEenKofferMetGoud
.

Definition erIsMinimaalEenKofferMetEenWareUitspraak :=
K1 \/ K2 \/ K3 \/ K4.

Definition erIsMaximaalEenKofferMetEenWareUitspraak :=
~(K1\/K2\/K3) \/ ~(K1\/K2\/K4) \/ ~(K1\/K3\/K4) \/ ~(K2\/K3\/K4).

Definition erIsPreciesEenKofferMetEenWareUitspraak :=
  erIsMinimaalEenKofferMetEenWareUitspraak
/\
  erIsMaximaalEenKofferMetEenWareUitspraak
.


Theorem deOplossingIs :
    erIsPreciesEenKofferMetGoud
/\
    erIsPreciesEenKofferMetEenWareUitspraak
->
    G1 (* Geef hier aan in welke koffer het goud zit. *)
    /\
    K4  (* Geef hier aan op welke koffer de ware uitspraak staat. *)
.
Proof.
unfold erIsPreciesEenKofferMetGoud.
unfold erIsMinimaalEenKofferMetGoud.
unfold erIsMaximaalEenKofferMetGoud.
unfold erIsPreciesEenKofferMetEenWareUitspraak.
unfold erIsMinimaalEenKofferMetEenWareUitspraak.
unfold erIsMaximaalEenKofferMetEenWareUitspraak.
unfold K1.
unfold K2.
unfold K3.
unfold K4.
tauto.
Qed.