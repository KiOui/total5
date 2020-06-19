Require Import BenB.

(* Correctheidsstelling in propositielogica. *)

(* Hier eerst het domeinmodel van de originele bedradingspagina. *)
   

(* Apparaat: cd-speler. *)
(* Auteur: Hanno Wupper. *)
Variable cdsp_stroom : Prop.
  (* Er staat 230 volt op de stekker van de cd-speler. *)
Variable cdsp_cd : Prop.
  (* Er draait een audio-cd in de cd-speler. *)
Variable cdsp_lol : Prop.
  (* Er staat een analoog geluidssignaal L op de linker line-uitgang van de cd-speler. *)
Variable cdsp_lor : Prop.
  (* Er staat een analoog geluidssignaal R op de rechter line-uitgang van de cd-speler. *)
Variable cdsp_aan : Prop.
  (* De aan-uit-knop van de cd-speler staat op 'aan'. *)
Definition cdsp :=
      cdsp_stroom
    /\
      cdsp_cd
    /\
      cdsp_aan
  ->
      cdsp_lol
    /\
      cdsp_lor
.
  (* Als er op de stekker van de cd-speler 230 volt staat, er een audio-cd in de cd-speler
     draait en de aan-uit-knop op 'aan' staat, dan staan er analoge geluidssignalen op
     de linker line-uitgang van de cd-speler en op de rechter line-uitgang van de cd-speler.
  *)
 
 
(* Apparaat: box-links. *)
(* Auteur: Hanno Wupper. *)
Variable boxl_in_l : Prop.
  (* Er staat een versterkt analoog monogeluidssignaal L op de ingang van box-links. *)
Variable mono_l : Prop.
  (* Er is monogeluid L in de kamer. *)
Definition boxl :=
    boxl_in_l
  ->
    mono_l
.
  (* Als er een versterkt analoog monogeluidssignaal L op de ingang van de box-links staat,
     dan is er monogeluid L te horen in de kamer.
  *)


(* Apparaat: versterker. *)
(* Auteur: Paul van Poecke. *)
Variable verst_linel : Prop.
  (* Er staat analoog geluidssignaal L op de linker line-ingang van de versterker. *)
Variable verst_liner : Prop.
  (* Er staat analoog geluidssignaal R op de rechter line-ingang van de versterker. *)
Variable verst_stroom : Prop.
  (* Er staat 230 volt op de stekker van de versterker. *)
Variable verst_sol : Prop.
  (* Er staat versterkt analoog geluidssignaal L op de linker speaker-uitgang van de versterker. *)
Variable verst_sor : Prop.
  (* Er staat versterkt analoog geluidssignaal R op de rechter speaker-uitgang van de versterker. *)
Variable verst_aan : Prop.
  (* De aan-uit-knop van de versterker staat op 'aan'. *)
Definition verst :=
    verst_stroom
  /\
    verst_linel
  /\
     verst_liner
  /\
     verst_aan
->
    verst_sol
  /\
    verst_sor.
  (* Als bij deze versterker er op de stekker 230 V staat,
     de aan/uit knop op 'aan' staat en op zowel de linker als
     de rechts line-ingangen een analoog geluidssignaal binnenkomt,
     dan staat een versterkt analoog geluidssignaal L op de speaker-uitgang L
     en versterkt analoog geluidssignaal R op de speaker-uitgang R. 
  *)


(* Apparaat: stekkerdoos. *)
(* Auteur: Sebastiaan Versteeg. *)
Variable sd_stroom : Prop.
  (* Er staat 220/230 volt op de stekker van de stekkerdoos. *)
Variable sd_uit1 : Prop.
  (* Er staat 220/230 volt op uitgang 1 van de stekkerdoos waarop andere apparaten
     kunnen worden aangesloten waardoor het aangesloten apparaat ook 220/230 volt
     krijgt.
  *)
Variable sd_uit2 : Prop.
  (* Er staat 220/230 volt op uitgang 2 van de stekkerdoos waarop andere apparaten
     kunnen worden aangesloten waardoor het aangesloten apparaat ook 220/230 volt
     krijgt.
  *)
Variable sd_uit3 : Prop.
  (* Er staat 220/230 volt op uitgang 3 van de stekkerdoos waarop andere apparaten
     kunnen worden aangesloten waardoor het aangesloten apparaat ook 220/230 volt
     krijgt.
  *)
Definition sd :=
    sd_stroom
  ->
      sd_uit1
    /\
      sd_uit2
    /\
      sd_uit3
.
  (* Als de stekkerdoos stroom krijgt,
     dan krijgen de apparaten die zijn aangesloten ook stroom. *)
 
    
(* Apparaat: waterkoker. *)
(* Auteurs: Michel Kok en Bram in 't Zandt. *)
Variable wk_stroom : Prop.
  (* Er staat 230 volt op de stekker van de waterkoker. *)
Variable wk_knop : Prop.
  (* De knop op de waterkoker is ingedrukt. *)
Variable wk_verwarmen : Prop.
  (* Het water in de waterkoker wordt verwarmd. *)
Variable wk_temperatuur : Prop.
  (* Het water in de waterkoker is op de gewenste temperatuur. *)
Definition wk :=
      wk_stroom
    /\
      wk_knop
  ->
      wk_verwarmen
    <->
      ~ wk_temperatuur
.
  (* Als deze waterkoker 230 volt krijgt en de knop is ingedrukt,
     dan wordt het water verwarmd. *)


(* Apparaat: bewegingssensor. *)
(* Auteur: Thomas Churchman. *)
Variable bws_stroom_in : Prop.
  (* Spanning op de input-stekker van de bewegingssensor. *)
Variable bws_stroom_uit : Prop.
  (* Spanning op de output-stekker van de bewegingssensor. *)
Variable bws_detectie : Prop.
  (* Beweging gedetecteerd in de afgelopen twee minuten. *)
Definition bws :=
      bws_stroom_in
    /\
      bws_detectie
  <->
    bws_stroom_uit
.
  (* Er staat spanning op de uitgang van de bewegingssensor dan en
     slechts dan als er spanning staat op de ingang van de
     bewegingssensor en er beweging is gedetecteerd in de
     afgelopen twee minuten.
  *)
  
(* Einde van het originele domeinmodel. *)

(* 
   Voeg op de plaats van de placeholder hieronder alle nieuwe proposities
   toe (gescheiden door witruimte) die u nodig heeft voor uw installatie. 
*)

Variables V1 : Prop.


(*
   Voeg op de plaatsen van de placeholders hieronder alle specificaties toe
   van de apparaten die u gebruikt in uw installatie.
   
   Gebruikt u minder onderdelen dan er hier zijn voorgesteld, zet dan
   zoals altijd dummy's neer, bijvoorbeeld
   'Definition ap1 := True.'
*)

Definition ap1 := True.

Definition ap2 := True .

Definition ap3 := True .

Definition ap4 := True .

Definition ap5 := True .

Definition ap6 := True .

(*
   Geef hieronder de gewenste eigenschap van uw installatie.
   Verzin een passende naam voor uw complete installatie.
*)

Definition installatie := cdsp_stroom /\ cdsp_cd /\ cdsp_aan /\ verst_stroom /\ verst_aan -> mono_l.


(*
   Het is niet onwaarschijnlijk dat de door u gekozen apparaten op
   wiskundig niveau net niet goed aan elkaar gekoppeld worden. 
   Om dat probleem op te lossen kunt u hier speciale koppelstukken
   definieren. Denk hierbij aan allerlei soorten kabeltjes, aan adapters,
   aan converters, et cetera.
   
   Elk van die koppelstukken geeft u een eigen naam en een eigen
   specificatie.
   
   Heeft u geen kopelstukken nodig, dan moet u hier weer dummy's
   van maken, bijvoorbeeld
   'Definition kop1 := True.'
*)   

Definition kabelLinks := cdsp_lol -> verst_linel .

Definition kabelRechts := cdsp_lor -> verst_liner .

Definition kabelVersterktL := verst_linel -> boxl_in_l .

Definition D1 := True .

Definition D2 := True .

Definition D3 := True .

(*
   En hieronder moet u de correctheidsstelling van uw installatie geven.
   Dat is dus een stelling die zegt dat als u de juiste apparaten aan elkaar
   koppelt (eventueel met koppelstukken) dat dan de hierboven ingevoerde
   'gewenste eigenschap' dan geldt.
   
   Gebruik hierbij de namen die u hierboven achter de Definition's heeft
   ingevoerd.
*)

Theorem mijnInstallatieWerkt : 
cdsp /\ verst /\ boxl /\ kabelLinks /\ kabelRechts /\ kabelVersterktL
->
installatie
.
Proof.
(* 
   En hier komt het bewijs.
   - Toon de daadwerkelijke definities van apparaat x met 'unfold x.'
   - Doe 'tauto.' als er alleen nog maar atomaire proposities staan.

   Om de verifier niet te laten klagen dat de tactiek 'tauto' wordt
   gebruikt, staat hier een lijst met 15 unfolds.
   Waarschijnlijk is dat meer dan genoeg.
  
   Voor de regels die u niet nodig heeft, moet er wel echt een
   definitie worden opengevouwen. Echter, dat mag een definitie
   zijn die helemaal niet voorkomt. Dus als dummy kunt u hier
   gebruikmaken van bijvoorbeeld de bewegingssensor:
   'unfold bws.'

   U mag echter geen regels weghalen, want dan vindt de verifier dat u de
   opgave heeft aangepast en krijgt u (hooguit) een oranje vlaggetje.
*)

unfold installatie.
unfold cdsp.
unfold verst.
unfold boxl.
unfold kabelLinks.
unfold kabelRechts.
unfold kabelVersterktL.
unfold bws.
unfold bws.
unfold bws.
unfold bws.
unfold bws.
unfold bws.
unfold bws.
unfold bws.
tauto.
Qed.

  