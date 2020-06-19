Require Import BenB.

(*
  De systematische vertaalmethode met de blokkendozen is
  conceptueel natuurlijk mooi, maar werkt voor ingewikkeldere
  zinnen alleen maar goed als u over veel en vooral groot papier
  beschikt.

  U kunt echter ook Coq gebruiken voor het administratieve deel van
  deze methode.

  De 'dozen' en de 'hertalingen' kunnen in Coq gesimuleerd worden door
  voor elke stap een nieuwe 'Definition' in te voeren. Gebruik als
  naam voor de definitie de hoofdzin uit de methode, waarbij u natuurlijk
  moet zorgen dat er wel een geldige naam uit komt, dus vervang spaties
  en leestekens door een underscore. Zorg dat eventuele variabelen zichtbaar
  zijn in de namen.

  Helaas kan Coq een 'Definition' alleen maar accepteren als alle
  dingen die in die definitie gebruikt worden al netjes gedefinieerd
  zijn.
  Dat betekent dat de oorspronkelijke zin onderaan in het bestand
  staat en u per stap daarboven een  nieuwe definitie moet toevoegen 
  totdat u op het niveau bent waar u direct de predikaten uit het
  domeinmodel kunt gebruiken.
*)

(* Domeinmodel *)

(* Domeinen *)
Variable M : Set. 
  (* De verzameling mensen. *)

(* Constanten *)
(* Functies *)

(* Predikaten *)
Variable isMan (* x *) : M -> Prop.
  (* Mens x is een man. *)
  (* Opzoeken bij de gemeentelijke basisadministratie. *)
Variable isVaderVan (* x y *) : M -> M -> Prop.
  (* Mens x is vader van mens y. *)
  (* Opzoeken bij de gemeentelijke basisadministratie. *)
Variable isBroerVan (* x y *) : M -> M -> Prop.
  (* Mens x is een broer van mens y. *)
  (* Opzoeken bij de gemeentelijke basisadministratie. *)

(*
  Hieronder staat een lange lijst definities die u ofwel 
  verstandig uitwerkt omdat u de definitie nodig heeft,
  ofwel voorziet van een dummy zodat Coq de regel kan
  uitvoeren, bijvoorbeeld
  'Definition D1 := True.'
*)


Definition iedereenIsBroerVan (x:M) :=
forall (b:M),
    isBroerVan x b
.


Definition iedereenIsZoonVan (x:M) := 
forall(z:M),
    isVaderVan x z
.

Definition D3:= True
.

Definition D4:= True
.

Definition D5:= True
.

Definition D6:= True
.

Definition D7:= True
.

Definition D8:= True
.

Definition D9:= True
.

Definition D10:= True
.

Definition D11:= True
.

Definition D12:= True
.

Definition D13:= True
.

Definition D14:= True
.

Definition D15:= True
.

Definition D16:= True
.

(*
  En hier de zin die u moet gaan formaliseren:
  "Wiens vader iedereens vader is, die heeft elke man tot broer."
*)

Definition wiens_vader_iedereens_vader_is_die_heeft_elke_man_tot_broer :=
forall x:M, 
    (exists y:M, 
        isVaderVan y x
        /\
        iedereenIsZoonVan y
    )
    ->
    iedereenIsBroerVan x
.

(* 
   Uiteindelijk moet u de formule waarbij volgens Coq overbodige haakjes
   zijn weggelaten kopieren naar de leertaak. Om dat eenvoudiger te maken,
   passen we hier een truc toe.
*)

(*
   We maken een kopie van de expressie.
*)
Definition zelfde := 
wiens_vader_iedereens_vader_is_die_heeft_elke_man_tot_broer
. 

(*
   Deze kopie is natuurlijk gelijk aan het origineel,
   dus de volgende stelling moet bewijsbaar zijn.
*)
Theorem gelijk :
wiens_vader_iedereens_vader_is_die_heeft_elke_man_tot_broer = zelfde
.
Proof.
(* 
   Door stap voor stap een deel van de formule uit te vouwen, toont Coq
   uiteindelijk iets van de vorm 'uitgewerkte formule = zelfde'.
   U kunt dan eenvoudig de formule naar de leertaak kopieren (zonder
   het '= zelfde' deel).
   Zorg wel dat uw kopie een leesbare layout heeft.

   De eerste unfold is al voorgedaan. De rest moet u tussen de placeholder
   'proof' en de tactiek 'reflexivity' zetten.
*)

unfold wiens_vader_iedereens_vader_is_die_heeft_elke_man_tot_broer.
(*! proof *)
unfold iedereenIsZoonVan.
unfold iedereenIsBroerVan.
(*
   Om technische redenen moet u bij de volgende tactiek 'reflexivity'
   de commentaartekens verwijderen.
*)
reflexivity.
Qed.
