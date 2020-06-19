Require Import BenB.

(* Domeinen *)
Definition T := R.
  (* Betekenis: Tijd in minuten in reele getallen. *)
Variable A : Set.
  (* Betekenis: De verzameling auto's. *)
Definition G := R.
  (* Betekenis: De verzameling geldbedragen in euro's. *)


(* Predikaten *)
Variable autoAangeleverd (* t a *): T -> A -> B.
  (* Auto a staat in de entreeruimte op tijdstip t. *)
  (* Kijk of de auto er staat op dat moment. *)
Variable autoUitgeleverd (* t a *): T -> A -> B.
  (* Auto a staat in de uitleverruimte op tijdstip t. *)
  (* Kijk of de auto er staat op dat moment. *)
Variable pasUitgegeven (* t a *): T -> A -> B.
  (* Pasje is uitgegeven voor auto a op tijdstip t. *)
  (* Voel in het bakje op dat moment. *)
Variable geldBetaald (* t g *): T -> G -> B.
  (* Geldbedrag g is in de betaalautomaat gestopt op tijdstip t. *)
  (* Kijk op het display op dat moment. *)
Variable inBerging (* t a *): T -> A -> B.
  (* Auto a staat in berging op tijdstip t. *)
  (* Doorzoek de berging op dat moment. *)
Variable autoOpgeborgenBericht (* t a *): T -> A -> B.
  (* Signaal dat auto a in berging staat op tijdstip t. *)
  (* Meet spanning op de verbindingskabel op dat moment. *)
Variable isBetaaldBericht (* t a *): T -> A -> B.
  (* Signaal dat er betaald is voor auto a op tijdstip t. *)
  (* Meet spanning op de verbindingskabel op dat moment. *)
Variable uitBerging (* t a *): T -> A -> B.
  (* Auto a gaat naar uitleverruimte op tijdstip t. *)
  (* Luister of je de machine hoort werken op dat moment. *)

(* Functies *)
(* Tijdens het college zijn we hier niet aan toegekomen, maar het
   is noodzakelijk om aan de hand van een tijd(sduur) een
   verschuldigd bedrag te kunnen bepalen. 

   Dat kan via functies en wel op twee manieren:

   1. Met een abstracte functie via Variable:

      Variable tijdIsGeld : T -> G.

      Hierbij wordt alleen maar vastgelegd dat er een orakel is dat bij een
      gegeven tijd(sduur) een bedrag berekent, zonder te zeggen hoe dat
      precies gebeurt.

   2. Met een concrete functie via Definition:

      Definition tijdIsGeld (d:T) := d.

      Hierbij wordt vastgelegd dat er (zoals in de spec staat) voor 
      d minuten parkeren d euro moet worden betaald.

   De tweede manier maakt echter stiekem gebruik van het feit dat Coq
   geen onderscheid ziet tussen de verzamelingen T en G, want het zijn
   allebei kopieen van de reele getallen.

   Daarom kiezen we voor de eerste manier.
*)

Variable tijdIsGeld : T -> G.


(* Specificaties onderdelen *)

Definition Opberger :=
(*! term *)

forall t:T,
  forall a:A,
      autoAangeleverd t a
    ->
        inBerging (t+1) a
      /\
        autoOpgeborgenBericht (t+2) a

.


Definition Pasuitgaveautomaat :=
(*! term *)

forall t:T,
  forall a:A,
      autoOpgeborgenBericht t a
    ->
      pasUitgegeven t a

.


Definition Berging :=
(*! term *)

forall t:T,
  forall a:A,
      inBerging t a
    ->
        (~isBetaaldBericht (t+1) a  /\ inBerging (t+1) a)
      \/
        (isBetaaldBericht (t+1) a  /\ autoUitgeleverd (t+1) a)

.




(* De specificatie van de overige onderdelen hebben we niet in het college
   behandeld. 
   Die moet u dan ook zelf bedenken.
*)

Definition Betaalautomaat :=
(*! term *)
(* Waarschijnlijk heeft u hier ergens de functie tijdIsGeld nodig
   om een tijd(sduur) te converteren naar een geldbedrag.
   We hebben dat hier gedaan met een abstracte functie.
   Zie de uitleg onder Functies.
*)
forall t:T,
  forall a:A,
    forall d:T,
        pasUitgegeven t a /\ geldBetaald (t+d) (tijdIsGeld d)
      ->
        isBetaaldBericht (t+d) a
.



Definition Uitvoerplatform :=
(*! term *)
forall t:T,
  forall a:A,
      isBetaaldBericht t a /\ uitBerging t a
    ->
      autoUitgeleverd t a
.



(* Specificatie van het geheel *)

(* De specificatie van het geheel hebben we ook niet behandeld,
   maar hier is een suggestie.
*)

Definition Parkeergarage :=
(*! term *)

forall a:A,
  forall t:T,
     forall d:T,
           autoAangeleverd t a
        /\
           geldBetaald (t+d) (tijdIsGeld d)
     ->
        autoUitgeleverd (t+d+1) a

.


(* Correctheidsstelling *)

(* Omdat we hem nu toch nog niet kunnen bewijzen zetten we hem
   tussen commentaar, want anders klaagt de verifier dat er
   'pending proofs' zijn en komt er een rood kruisje.
Theorem CorStelling :
    Opberger
  /\
    Pasuitgaveautomaat
  /\
    Berging
  /\
    Betaalautomaat
  /\
    Uitvoerplatform
->
  Parkeergarage
.
*)