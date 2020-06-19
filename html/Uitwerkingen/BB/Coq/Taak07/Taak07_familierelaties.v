Require Import BenB.

(* Domeinen *)
Variable M: Set.
  (* Verzameling van alle levende en overleden mensen. *)
Definition T := R.
  (* Verzameling tijdstippen in reele getallen als minuten. *)

(* Predikaten *)
Variable isMan (* x *) : M -> Prop.
  (* x is een man *)
  (* Opzoeken in gemeentelijke basisadministratie. *)

Variable ouderVan (* x y *) : M -> M -> Prop.
  (* x is een ouder van y. *)
  (* Opzoeken in gemeentelijke basisadministratie. *)

Variable wordtGeboren (* x t *) : M -> T -> Prop.
  (* x wordt geboren op tijdstip t. *)
  (* Controleren via geboorteregister. *)

Variable overlijdt (* x t *) : M -> T -> Prop.
  (* x overlijdt op tijdstip t. *)
  (* Controleren via overlijdensakte. *)

Variable trouwtMet (* x y t *): M -> M -> T -> Prop.
  (* x trouwt met y op tijdstip t *)
  (* Controleren via huwelijksregister. *)
  
(*
   Hierboven mag u niets aanpassen. U zult met dit domeinmodel moeten
   proberen om onderstaande hulppredikaten zo goed mogelijk te
   formaliseren.
*)

(* Hulphulppredikaten *)
(* Deze definities staan hier alleen maar voor de mensen die graag de
   systematische vertaalmethode gebruiken en daarvoor
   extra Definition's nodig hebben.
   
   Gebruikt u ze niet, zet er dan dummy's neer, bijvoorbeeld
   Definition HH1 := True.
*)

Definition zelfdeGeboorteDatum (x:M) (y:M) :=
    forall t:T,
            wordtGeboren x t 
        /\ 
            wordtGeboren y t
.
(* x en y hebben dezelfde geboortedatum *)

Definition zelfdeVader (x:M) (y:M) :=
    exists m:M,
            isMan m
        /\
            ouderVan m x
        /\
            ouderVan m y
.
(* x en y hebben dezelfde vader *)

Definition zelfdeMoeder (x:M) (y:M) :=
    exists m:M,
            ~isMan m
        /\
            ouderVan m x
        /\
            ouderVan m y
. 
(* x en y hebben dezelfde moeder *)

Definition ouderDan (x:M) (y:M) :=
    forall t:T,
        forall d:T,
            wordtGeboren x t
            /\
            wordtGeboren y d
            ->
            (t<d)
.
(* x is ouder dan y *)

Definition ouderDanAndereKinderen (x:M) (y:M) := 
    forall m:M,
        ouderVan m y
        /\
        (x<>m)
        ->
        ouderDan x m
.
(* x is ouder dan alle kinderen van y *)

Definition HH4 := True
.

Definition HH5 := True
.

Definition HH6 := True
.

Definition HH7 := True
.

Definition HH8 := True
.


(* Hulppredikaten *)
(*
   Maak voor de onderstaande hulppredikaten nette definities
   binnen dit domeinmodel.

   Uw studentnummer bepaalt welke definities u precies moet
   uitwerken. De overige definities dient u op de gebruikelijke
   manier voor Coq accepteerbaar te maken.
  
   De gewenste betekenis staat in commentaar vermeld.

   U mag de types van de hulppredikaten niet aanpassen.

   U mag wel gebruikmaken van reeds eerder gedefinieerde
   (hulp)hulpredikaten.

   Zorg dat de layout van de formules overeenkomt met de
   wiskundige structuur.
*)

Definition leeft (x:M) (t:T) :=
  (* Mens x leeft op tijdstip t. *)
  True
.

Definition isWeduwe (x:M) (t:T) :=
  (* Mens x is weduwe op tijdstip t. *)
  True
.

Definition tweeling (x:M) (y:M) :=
    (* Mens x en mens y zijn samen een tweeling. *)
    zelfdeGeboorteDatum x y
  /\
    zelfdeVader x y
  /\
    zelfdeMoeder x y
.
  
Definition oudsteKindVan (x:M) (y:M) :=
  (* x is het oudste kind van y. *)
    ouderVan y x
  /\
    ouderDanAndereKinderen x y
.

