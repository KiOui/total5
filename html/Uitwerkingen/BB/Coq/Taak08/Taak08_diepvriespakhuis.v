Require Import BenB.


Definition T := R.
(* De verzameling tijdstippen als reele getallen in seconden. *)
Variable K: Set.
(* De verzameling van verschillende kasten. *)
Variable S: Set.
(* De verzameling van knoppen op het besturingspaneel. *)

(* Functies *)
Variable knopKast (* s *): S -> K.
(* Geeft een kast bij een knop s. *)


(* Predikaten *)
Variable ruimteAanwezig (* t k *): T -> K -> Prop.
(* Op tijdstip t is er rechts van kast k voldoende ruimte 
   aanwezig. *)
Variable obstructieGedetecteerd (* t *): T -> Prop.
(* Op tijdstip t is er een obstructie gedetecteerd. *)
Variable noodstop (* t *): T -> Prop.
(* Op tijdstip t is de noodstopknop ingedrukt. *)
Variable isVeiligknop (* t *): T -> Prop.
(* Op tijdstip t is de veiligheidsknop ingedrukt. *)	
Variable opdrachtGegeven (* t k *): T -> K -> Prop.
(* Op tijdstip t is de opdracht gegeven om rechts van kast k ruimte te maken. *)
Variable kastBeweegt (* t k *): T -> K -> Prop.
(* Op tijdstip t beweegt kast k. *)
Variable knopGedrukt (* t s *): T -> S -> Prop.	
(* Op tijdstip t is op knop s gedrukt. *)

Definition ruimteBespaard := 
(* Er wordt ruimte bespaard als er op elk tijdstip bij 0 of 1 kasten 
   ruimte aanwezig is. *)
   
forall t:T,
    (
       forall k:K,
         ~ruimteAanwezig t k
    )
  \/
    (
       exists k:K,
           ruimteAanwezig t k
         /\
           (
             forall z:K,
                 ruimteAanwezig t z
               ->
                 z = k
           )
    )
.

Definition magBewegen (t:T) :=
(* Het systeem mag bewegen op tijdstip t als er t1 seconden geleden op de 
   veiligheidsknop gedrukt is en er in het interval tussen t1 seconden 
   geleden en t geen obstructie is en geen noodstop is ingedrukt. *)

exists t1:T,
        (t1 < t)
    /\
        isVeiligknop t1
    /\
        (
            forall d:T,
                    (d > t1)
                /\
                    (d < t)
                ->
                    ~noodstop d
        )
                    
.

Definition isVeilig := 
(* Het systeem is veilig als op alle tijdstippen t de kasten mogen bewegen, 
   of als de kasten niet bewegen. *)
forall t:T,
    magBewegen t
  \/
    (
      forall k:K,
        ~kastBeweegt t k
    )
.

Definition allesBereikbaar :=
(* Als er op een knop voor een kast gedrukt wordt en er mag 
   30 seconden bewogen worden dan is 30 seconden later bij de 
   bijbehorende kast ruimte aanwezig. *)
forall s:S,
    forall t:T,
            knopGedrukt t s
        /\
            (
                forall d:T,
                        (d > t)
                    /\
                        (d <= t+30)
                    ->
                        ~noodstop d
            )
        ->
            ruimteAanwezig (t+30) (knopKast s)

.

(* Specificatie van het geheel *)

(* Als op een willekeurig moment op een of andere knop wordt gedrukt, 
   dan is er een zekere tijd later ruimte aanwezig bij de bijbehorende 
   kast. *)
Definition diepvriespakhuis :=
forall t:T,
    forall s:S,
            knopGedrukt t s
        ->
            (
                exists d:T,
                        (d>t)
                    /\
                        ruimteAanwezig d (knopKast s)
            )
.       
