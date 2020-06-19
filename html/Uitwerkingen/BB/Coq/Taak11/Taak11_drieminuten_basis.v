Require Import BenB.

Definition T := R.
  (* Tijd als reele getallen in minuten. *)

Variable Li (* t *) : T -> B.
  (* Op tijdstip t brandt het licht. *)
  (* Kijken. *)
Variable Kn (* t *) : T -> B.
  (* Op tijdstip t wordt op de knop gedrukt. *)

(* spec1:
    Als op een willekeurig moment op de knop gedrukt wordt,
    dan brandt het licht daarna gedurende drie minuten,
  en,
    als het licht brandt op een willekeurig moment, dan is
    er een moment geweest in de drie daaraan voorafgaande minuten
    waarop er op de knop gedrukt is.
*)

(* spec2:
    Als het licht brandt op een willekeurig moment, dan is
    er een moment geweest in de drie daaraan voorafgaande minuten
    waarop er op de knop gedrukt is,
  en,
    voor elk moment geldt dat als er een moment geweest is in
    de drie daaraan voorafgaande minuten dan brandt het licht op
    dat moment.
*)

(* spec3:
  Voor elk moment geldt dat:
      in de drie daaraan voorafgaande minuten is er
      niet op de knop gedrukt
    dan en slechts dan als
      het licht niet brandt op dat moment.
*)

Theorem spec1ImpliceertSpec2:
    (
     forall t:T, 
         Kn t 
       -> 
         (forall u:T, u in (t,t+3] -> Li u)
    )
  /\
    (
      forall t:T, 
          Li t 
        -> 
          (exists u:T, u in [t-3,t) /\ Kn u)
    )
->
    (
      forall t:T, 
          Li t 
        -> 
          (exists u:T, u in [t-3,t) /\ Kn u)
    ) 
  /\
    (
      forall t:T, 
          (exists u:T, u in [t-3,t) /\ Kn u) 
        -> 
          Li t
    )
.
Proof.

(* Het is een implicatie dus ... *)
imp_i spec1.

(* En spec2 is blijkbaar een conjunctie. *)
con_i.

(* Maar deze eerste helft is de tweede helft van spec1. *)
con_e2 ( (forall t : T, Kn t -> ( forall u : T, u in  (t, t + 3] -> Li u ) )  ).
hyp spec1.


(* We moeten een forall-bewering bewijzen, dus probeer all_i
   met een onbesproken variabele a. *)
all_i a.

(* Dit is weer een implicatie. *)
imp_i exi_u.

(* En nu hebben we een exists in de aannames,
   dus we doen exi_e met onbesproken variabele c. *)
exi_e ( exists u : T, u in  [a - 3, a) /\ Kn u ) c  kn_c.
hyp exi_u.

(* Li a zou een instantie van de Li u kunnen zijn uit spec1
   als we voor u a lezen, dus we proberen naar spec1 toe te
   werken, waarbij we eerst alles in a doen, totdat we die
   a met een all_e om kunnen zetten in een u. *)
imp_e ( a in (c, c+3]  ).
all_e (  forall u : T, u in  (c, c + 3] -> Li u )  a.

all_i u1.
imp_i int_u.
imp_e (u1 in (c,c+3]).
all_e ( forall u : T, u in  (c, c + 3] -> Li u   ) u1.
imp_e (Kn c).
all_e ( (forall t : T, Kn t -> ( forall u : T, u in  (t, t + 3] -> Li u ) )   ) c.
con_e1 ( (forall t : T, Li t -> ( exists u : T, u in  [t - 3, t) /\ Kn u ) ) ).
hyp spec1.
con_e2 ( c in  [a - 3, a) ).
hyp kn_c.
hyp int_u.
interval.
con_i.
(* De ene kant van het interval is makkelijk. *)
con_e2 ( a-3 <= c).
con_e1 (Kn c).
hyp kn_c.
(* Voor de andere kant hebben we de imp-truc nodig. *)
imp_e (a-3<=c).
imp_i truc.
lin_solve.
con_e1 (c<a).
con_e1 (Kn c).
hyp kn_c.
Qed.



Theorem spec2ImpliceertSpec1:
    (
      forall t:T, 
          Li t 
        -> 
          (exists u:T, u in [t-3,t) /\ Kn u)
    ) 
  /\
    (
      forall t:T, 
          (exists u:T, u in [t-3,t) /\ Kn u) 
        -> 
          Li t
    )
->
    (
     forall t:T, 
         Kn t 
       -> 
         (forall u:T, u in (t,t+3] -> Li u)
    )
  /\
    (
      forall t:T, 
          Li t 
        -> 
          (exists u:T, u in [t-3,t) /\ Kn u)
    )
.
Proof.
imp_i a1.
con_i.
all_i a.
imp_i a2.
all_i b.
imp_i a3.
imp_e (exists u : T, u in  [b - 3, b) /\ Kn u).
all_e (forall t : T, (exists u : T, u in  [t - 3, t) /\ Kn u) -> Li t) b.
con_e2 (forall t : T, Li t -> exists u : T, u in  [t - 3, t) /\ Kn u).
hyp a1.
exi_i a.
con_i.
interval.
con_i.
imp_e (b<=a+3).
imp_i truc.
lin_solve.
con_e2 (a<b).
hyp a3.
con_e1 (b <= a+3).
hyp a3.
hyp a2.
con_e1 (forall t : T, (exists u : T, u in  [t - 3, t) /\ Kn u) -> Li t).
hyp a1.
Qed.
