Require Import BenB.

(* Deze opgave hoort bij leertaak 2. *)

(*
   In leertaak 1 heeft u een artefact gekozen en daar een rationaliteitsvierkant
   bij gemaakt, de focus expliciet vastgelegd en de gewenste eigenschap
   van dat artefact in natuurlijke taal opgeschreven. 

   Bij deze opgave gaat u die eigenschap formaliseren in de predikaatlogica
   zoals Coq die kent.

   In dit bestand ziet u op verschillende plaatsen 'term' staan tussen
   commentaartekens.

   Dat zijn precies de plaatsen waar u iets mag veranderen.
*)

(*
   We beginnen met het definieren van een woordenboek, zodat Coq weet
   waar we het over hebben.
*)

(*
   Bij dit vak zijn de reele getallen al voorgedefinieerd als R,
   maar voor het gemak, maken we een kopie van die verzameling die
   we T noemen om de tijd mee aan te geven.
   Omdat het een kopie is gebruiken we 'Definition'.

   Netzo maken we kopieen voor temperaturen, lengtes en gewichten.
   We maken ons bij deze opdracht niet druk over het feit dat het niet
   heel erg logisch is om dit soort dingen als reele getallen weer te
   geven. Hier gaat het vooral om de syntax.
*)
Definition T := R. (* Tijd als reele getallen in seconden. *)
Definition Temp := R. (* Temperaturen als reele getallen graden Celsius. *)
Definition Len := R. (* Lengtes als reele getallen in millimeters. *)
Definition Gew := R. (* Gewichten als reele getallen in grammen. *)

(*
   Verder introduceren we een paar abstracte verzamelingen.
   Ze zijn abstract in die zin dat Coq alleen maar weet dat het
   verzamelingen zijn, maar Coq heeft geen idee aan welke eigenschappen
   de elementen uit die verzamelingen voldoen. Sterker nog, Coq weet niet
   eens of deze verzamelingen leeg zijn of niet!

   Omdat dit compleet nieuwe verzamelingen zijn gebruiken we Variable.
*)

Variable Mensen : Set. (* De verzameling mensen. *)
Variable Dingen : Set. (* De verzameling dingen. *)
Variable Knoppen : Set. (* De verzameling knoppen van het artefact. *)

(* 
   Indien u andere abstracte verzamelingen wil maken, kunt u dat hier doen
   door de placeholder te vervangen door namen.

   Indien u ze niet allemaal nodig heeft, moet u ze helaas toch een 
   unieke naam geven omdat Coq het anders niet meer snapt.
   Gebruik bijvoorbeeld
   Variable V1 : Set.
   Variable V2 : Set.
   ...
*)

Variable V1 : Set.
Variable V2 : Set.
Variable V3 : Set.
Variable V4 : Set.
Variable V5 : Set.
Variable V6 : Set.
Variable V7 : Set.
Variable V8 : Set.

(*
   Vervolgens definieren we ook vast enkele predikaten, zodat u ziet hoe
   dat gaat.
*)

(* 
   Dit is een predikaat dat een mens als parameter krijgt.
   Het levert True op als het om een vrouw gaat.
*)
Variable isVrouw: Mensen -> Prop.

(*
   Dit is een predikaat met twee lengtes als parameters.
   Het levert True op als de eerste lengte groter is dan de tweede.
*)
Variable isGroterDan: Len -> Len -> Prop.

(*
   Dit is een predikaat met als eerste parameter een temperatuur en
   als tweede een tijd.
   Het levert True als op de gegeven tijd het de gegeven temperatuur is.
*)
Variable isTempOp: Temp -> T -> Prop.

(*
   Hieronder kunt u zelf meer predikaten toevoegen door de namen en de
   lijst van parameters in te voeren. Omdat het predikaten zijn,
   moeten ze wel eindigen op Prop.

   Ook als u ze niet nodig heeft, moet u ze helaas wel definieren omdat Coq
   de regels anders niet kan uitvoeren. Het is niet erg belangrijk wat
   u er dan van maakt, zolang er maar een unieke naam en een geldig
   type wordt gebruikt.

   Wat in elk geval werkt is:
   Variable P1 : Prop.
   Variable P2 : Prop.
   ...

*)

Variable kastOpen: T -> Prop .
Variable laOpen: T -> Prop .
Variable klerenPakkenOpbergen: T -> Prop .
Variable klerenLaPakkenOpbergen: T -> Prop .
Variable P5: Prop .
Variable P6: Prop .
Variable P7: Prop .
Variable P8: Prop .

(*
   Hier formuleert u de gewenste eigenschap waarbij u gebruik 
   mag maken van alle hierboven gedefinieerde verzamelingen en predikaten.

   Omdat het de opdracht was om de eigenschap met een 'voor alle' te laten
   beginnen, hebben we 'forall' vast ingevoerd. 
*)
Definition eigenschap := 
forall x: T, kastOpen(x) -> klerenPakkenOpbergen(x) \/ (laOpen(x) -> klerenLaPakkenOpbergen(x)).

(*
   Ter afsluiting een speciaal commando dat checkt of u iets zinnigs
   heeft ingevoerd.

   Er hoort een ': B' als antwoord van Coq te komen.
*)
Check eigenschap.