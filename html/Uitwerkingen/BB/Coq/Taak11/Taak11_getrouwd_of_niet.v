Require Import BenB.

Inductive M : Set := Anne | Jack | George.
  (* Een eindige verzameling relevante personen. *)

Variable isGetrouwd (* m *) : M -> Prop.
  (* Persoon m is getrouwd. *)
  (* Controleren in de GBA. *) 

Variable kijktNaar (* m n *) : M -> M -> Prop.
  (* Persoon m kijkt naar persoon n. *)
  (* Kijken waar m naar kijkt. *)

Theorem eenGetrouwdPersoonKijktNaarEenOngetrouwdPersoon:
    isGetrouwd Jack 
  /\
    ~isGetrouwd George 
  /\ 
    kijktNaar Jack Anne 
  /\ 
    kijktNaar Anne George
->
  exists m:M,
      isGetrouwd m
    /\
      exists u:M,
          ~isGetrouwd u
        /\
          kijktNaar m u.
Proof.
imp_i a1.
dis_e (isGetrouwd Anne \/ (~isGetrouwd Anne)) a2 a3.
LEM.
exi_i (Anne).
con_i.
hyp a2.
exi_i (George).
con_i.
con_e1 (kijktNaar Jack Anne /\ kijktNaar Anne George).
con_e2 (isGetrouwd Jack).
hyp a1.
con_e2 (kijktNaar Jack Anne).
con_e2 (~isGetrouwd George).
con_e2 (isGetrouwd Jack).
hyp a1.
exi_i (Jack).
con_i.
con_e1 (~isGetrouwd George /\ kijktNaar Jack Anne /\ kijktNaar Anne George).
hyp a1.
exi_i (Anne).
con_i.
hyp a3.
con_e1 (kijktNaar Anne George).
con_e2 (~isGetrouwd George).
con_e2 (isGetrouwd Jack).
hyp a1.
Qed.