Require Import BenB.

(* 
Rare antwoorden

We beginnen met het geven van de drie mogelijke antwoorden:

    A. Antwoord A
    B. Antwoord A of antwoord B
    C. Antwoord C of antwoord B 

Nu de vraag:

    Er is slechts één correct antwoord op deze vraag. Welk antwoord is dat? 
    
*)

(* Gebruik deze proposities met de aangegeven betekenis. *)

Variable A: Prop. (* Antwoord A is correct. *)
Variable B: Prop. (* Antwoord B is correct. *)
Variable C: Prop. (* Antwoord C is correct. *)


Theorem preciesEenAntwoordCorrect:
(* 
  Geef hieronder een implicatie in de propositielogica
  waarmee u kunt aantonen wat het enige correcte antwoord is. 

  Als u het goed doet geeft het commando 'tauto' hieronder
  'Proof completed'. Is het niet goed dan is de reactie 
  'Error: Classical tauto failed.'
*)

 (A /\ ~(A \/ B) /\ ~(B \/ C)) \/ (~A /\ (A \/ B) /\ ~(B \/ C)) \/ (~A /\ ~(A \/ B) /\ (B \/ C))
->
  (~A /\ ~B /\ C)
.

Proof.
tauto.
Qed.