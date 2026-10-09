#import "../../card_structure/equipment_card.typ": equipment_card

#let tactical_nuke = equipment_card(
  "Charge nucléaire tactique",
  name_size: 9.5pt,
  kind: "Atout, Arme, Explosif",
  charge: 3,
  dice: ("6",),
  effect: [Armer 1. Quand cet atout atteint 4~marqueurs, retirez-les tous. Choisissez un secteur. Ciblez‑y jusqu'à 10~engeances. Infligez 10~dégâts à chacune, et 5~dégâts à l'As de ce secteur.],
)
