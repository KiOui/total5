Require Import BenB.

(* Domeinen *)
Variable M : Set.
  (* De verzameling levende en overleden mensen. *)

Definition G := R.
  (* De verzameling geld in euro's als reele getallen. *)

(* Voeg hier zelf domeinen toe, inclusief betekenissen,
   voor zover u die nodig heeft om uw zin te formaliseren.
   Als u ze niet nodig heeft moet u hier zoals gebruikelijk
   een dummy plaatsen, bijvoorbeeld
   'Variable V1: Set.'
*)
   
Variable V1: Set .
  (* Betekenis: *)

Variable V2: Set .
  (* Betekenis:  *)

Variable V3: Set .
  (* Betekenis: *)


(* Constanten *)
(* Het is bij deze opdracht niet toegestaan om constantes te definieren. *)

(* Functies *)
(* Het is bij deze opdracht niet toegestaan om functies te definieren. *)

(* Predikaten *)
Variable isMan (* x *) : M -> Prop.
  (* Mens x is een man. *)
  (* Opzoeken in gemeentelijke basisadministratie. *)

Variable isOuderVan (* x y *) : M -> M -> Prop.
  (* Mens x is vader of moeder van mens y. *)
  (* Opzoeken in gemeentelijke basisadministratie. *)

(* Voeg hier zelf predikaten toe aan het domeinmodel.
   Maar let op: het domeinmodel moet wel minimaal
   blijven, dus u mag geen predikaten toevoegen die
   al uit te drukken zijn in bestaande predikaten.
   Dus iets als 'Variable isVrouw : M -> Prop.' mag niet worden
   toegevoegd omdat dit uit te drukken is met 'isMan'.
   
   Ook hier moet u weer dummy's toevoegen als u minder predikaten
   nodig heeft dan er zijn klaargezet, bijvoorbeeld
   'Variable P1 : Prop.'

   VOEG OOK DE BETEKENIS EN DE METING TOE!
*)
Variable isKoning (* x *) : M -> Prop.
  (* Betekenis: Mens x is een Koning. *)
  (* Meting: Opzoeken in landelijke administratie. *)

Variable leeft (* x *): M -> Prop .
  (* Betekenis: Mens x leeft. *)
  (* Meting: Opzoeken in gemeentelijke basisadministratie. *)

Variable hondenbelasting (* x *): M -> Prop .
  (* Betekenis: Mens x moet hondenbelasting betalen. *)
  (* Meting: Opzoeken in gemeentelijke basisadministratie. *)

Variable heeftHond (* x *): M -> Prop.
  (* Betekenis: Mens x heeft een hond. *)
  (* Meting: Vragen aan mens x. *)

Variable P1: Prop .
  (* Betekenis: *)
  (* Meting: *)

Variable P2: Prop .
  (* Betekenis: *)
  (* Meting: *)

Variable P3: Prop .
  (* Betekenis: *)
  (* Meting: *)

Variable P4: Prop .
  (* Betekenis: *)
  (* Meting: *)

Variable P5: Prop .
  (* Betekenis: *)
  (* Meting: *)


(* Hulppredikaten *)
(* Hulppredikaten horen niet bij het domeinmodel,
   maar zijn handige afkortingen voor ingewikkelde(re)
   formules.
*)

Definition isVrouw (m:M) :=
  ~ isMan m.
  (* Mens m is een vrouw. *) 
 
(* Voeg hier indien gewenst hulppredikaten toe.

   Ook hier moet u weer dummy's toevoegen als u minder hulppredikaten
   nodig heeft dan er zijn klaargezet, bijvoorbeeld
   'Definition H1 := True.'

   VOEG OOK DE BETEKENIS TOE!
   (Maar metingen hoeven niet want die zijn redundant.)
*)

Definition isKoningEnLeeft (m:M) :=
    isKoning m
    /\
    leeft m
.
  (* Betekenis: Mens m is een koning en leeft. *)
  
Definition H1 := True
.
  (* Betekenis: *)

Definition H2 := True
.
  (* Betekenis: *)

Definition H3 := True
.  
  (* Betekenis: *)

Definition H4 := True
.
  (* Betekenis: *)
  
Definition H5 := True
.
  (* Betekenis: *)

Definition H6 := True
.
  (* Betekenis: *)

Definition H7 := True
.
  (* Betekenis: *)
  
Definition H8 := True
.
  (* Betekenis: *)
  
Definition H9 := True
.
  (* Betekenis: *)

(* Zinnen *)
(* Het laatste cijfer uit uw studentnummer geeft aan welke
   zin u moet gaan formaliseren: is dat een 6 dan moet u zin6
   gaan formaliseren, is dat een 4 dan zin4, etcetera.
   
   Bij de overige zinnen dient u wel een geldige formule neer te
   zetten. Bijvoorbeeld Definition zin3 := True.
   Bij de overige zinnen dient u wel weer een dummy neer te zetten,
   bijvoorbeeld
   'Definition zin3 := True.'
   
   U mag natuurlijk alle hierboven gedefinieerde entiteiten gebruiken
   bij het formaliseren.
*)

Definition zin0 := True
(* Elke man is een kleinkind. *)
(*! term *)
.

Definition zin1 := True
(* Elke schoonvader is een man. *)
(*! term *)
.

Definition zin2 := True
(* Geen enkele man is een schoonmoeder. *)
(*! term *)
.

Definition zin3 := True
(* Elke koning heeft een broer. *)
(*! term *)
.

Definition zin4 := True
(* Er is precies een koningin. *)
(*! term *)
.

Definition zin5 := True
(* Wie een hond en een kat heeft betaalt 106.65 euro hondenbelasting. *)
(* Hint: bedenk dat 106.65 = (10665/100). *)
(*! term *)
.

Definition zin6 :=
(* Alleen koningen kunnen een hond hebben zonder hondenbelasting te betalen. *)
forall x:M, isKoningEnLeeft x 
            /\ 
            heeftHond x 
                -> 
                ~hondenbelasting x
.

Definition zin7 := True
(* Wie iedereen kent, kent niemand echt. *)
(*! term *)
.

Definition zin8:= True
(* Een broer is geen zus. *)
(*! term *)
.

Definition zin9 := True
(* Een koning heeft minimaal drie dochters. *)
(*! term *)
.
