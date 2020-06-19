Require Import BenB.

Variables A B C D : Prop.

Theorem oudeTentamensom1:
   A
 /\
   (D \/ ~B)
 /\
   (B /\ ~D)
 /\
   (~D -> ~A /\ C) 
->
  (A -> B \/ C -> D /\ (~B -> A)).
Proof.
(* 
   Eerst zorgen we ervoor dat we zoveel mogelijk losse
   aannames krijgen door implicatie-introducties te doen.
*)
imp_i aan1.
imp_i aan2.
imp_i aan3.

(*
   Nu hebben we een conjunctie als doel, dus de bewijsstrategie stelt
   voor om een conjunctie-introductie te doen.
*)
con_i.
(*
   We moeten D bewijzen, maar die zien we nog niet bij de aannames staan.
   We weten wel dat D \/ ~B geldt, dus die onvolledige informatie
   gaan we gebruiken via een gevalsonderscheiding.
*)
dis_e (D \/ ~B) links rechts.
(*
   Een disjunctie-eliminatie levert drie bewijsverplichtingen.
   We gaan nu eerst bewijzen dat de disjunctie B \/ ~D waar is.
   Dat is eenvoudig, want dat is een van de delen van aanname aan1.
   We moeten nu op de juiste manier de rest er aan vast maken.
*)
con_e1 ( (B /\ ~D) /\ (~D -> ~A /\ C)).
con_e2 A.
(*
   En nu hebben we precies aanname aan1 gekregen en kunnen we deze
   tak dus afsluiten.
*)
hyp aan1.
(*
   De disjunctie D \/ ~B is nu bewezen en we gaan verder 
   met de tweede bewijsverplichting van de disjunctie-eliminatie.
   Dus met de tak waarin D als aanname is toegevoegd. 
   
   Deze tak is triviaal af te sluiten.
*)
hyp links.
(* 
   Nu gaan we verder met de derde bewijsverplichting van de 
   disjunctie-eliminatie.
   Dus met de tak waarin ~B als aanname is toegevoegd.
   
   Als we goed kijken dan zien we zowel B als ~B bij de aannames staan
   en we kunnen dus de negatie-eliminatie gebruiken.
*)
neg_e B.
(*
   Dit levert twee bewijsverplichtingen op:
   eerst ~B en daarna B.
   
   De eerste is triviaal.
*)
hyp rechts.
(* 
   De tweede bewijsverplichting is ook niet moeilijk, want B
   staat ergens gegeven in aanname aan1.
  
   Daar moeten we alleen even naar toewerken.
*)
con_e1 (~D).
con_e1 ( ~ D -> ~ A /\ C ).
con_e2 (D \/ ~B).
con_e2 A.
hyp aan1.
(*
   Nu hebben we alles van de disjunctie-eliminatie afgesloten en
   zitten we in de tweede bewijsverplichting van de conjunctie-introductie
   aan het begin van het bewijs.

   De strategie stelt nu voor om de implicatie-introductie te doen.
*)
imp_i aan4.
(* 
   Als we goed kijken dan zien we weer zowel B als ~B bij de aannames 
   staan, dus we kunnen een stuk van het bewijs van hierboven hergebruiken.
*)
neg_e B.
hyp aan4.
con_e1 (~D).
con_e1 ( ~ D -> ~ A /\ C ).
con_e2 (D \/ ~B).
con_e2 A.
hyp aan1.
Qed.

Theorem oudeTentamensom2:
   A
 /\
   (B /\ C -> D \/ ~B)
 /\
   (B /\ ~D)
 /\
   (~D -> ~A /\ C) 
 /\
   (B -> C)
->
  (A -> B \/ C -> D /\ (~B -> A)).
Proof.
imp_i a1.
imp_i a2.
imp_i a3.
con_i.
dis_e (D \/ ~B) links rechts.
imp_e (B /\ C).
con_e1 ((B /\ ~D) /\ (~D -> ~A /\ C) /\ (B -> C)).
con_e2 A.
hyp a1.
con_i.
con_e1 (~D).
con_e1 ((~D -> ~A /\ C) /\ (B -> C)).
con_e2 (B /\ C -> D \/ ~B).
con_e2 A.
hyp a1.
dis_e (B \/ C) l r.
hyp a3.
imp_e B.
con_e2 (~D -> ~A /\ C).
con_e2 (B /\ ~D).
con_e2 (B /\ C -> D \/ ~B).
con_e2 A.
hyp a1.
hyp l.
hyp r.
hyp links.
neg_e B.
hyp rechts.
con_e1 (~D).
con_e1 ((~D -> ~A /\ C) /\ (B -> C)).
con_e2 (B /\ C -> D \/ ~B).
con_e2 A.
hyp a1.
imp_i laatst.
con_e1 ((B /\ C -> D \/ ~ B) /\ (B /\ ~ D) /\ (~ D -> ~ A /\ C) /\ (B -> C)).
hyp a1.
Qed.