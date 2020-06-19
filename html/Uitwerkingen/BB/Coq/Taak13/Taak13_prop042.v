(* Exercise 42 *) 

Require Import BenB.

Variables A B C D : Prop.


(* De volgende opgave demonstreert hoe de lengte van een bewijs
   sterk vergroot wordt als je geen herhaling van beweringen 
   toestaat (onder dezelfde aannames). Bij elke volgende stap komen
   er 4 regels bewijs bij - een toevoeging van een propositie E
   zou dus leiden tot 16 extra regels.
*)
Theorem exercise_042 : ((A -> B) /\ (B -> C) /\ (C -> D)) -> (A -> ((B /\ C) /\ D)).
Proof.
imp_i a1.
imp_i a2.
con_i.
con_i.
imp_e A.
con_e1 ((B -> C) /\ (C -> D)).
hyp a1.
hyp a2.
imp_e B.
con_e1 (C -> D).
con_e2 (A -> B).
hyp a1.
imp_e A.
con_e1 ((B -> C) /\ (C -> D)).
hyp a1.
hyp a2.
imp_e C.
con_e2 (B -> C).
con_e2 (A -> B).
hyp a1.
imp_e B.
con_e1 (C -> D).
con_e2 (A -> B).
hyp a1.
imp_e A.
con_e1 ((B -> C) /\ (C -> D)).
hyp a1.
hyp a2.
Qed.