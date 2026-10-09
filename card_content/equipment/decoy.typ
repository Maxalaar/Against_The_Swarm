#import "../../card_structure/equipment_card.typ": equipment_card

#let decoy = equipment_card(
  "Leurre",
  kind: "Atout, Matériel",
  charge: 1,
  dice: ("3+",),
  effect: [Ciblez jusqu'à 2 engeances à portée~2. Déplacer 1 chacune.],
  flavor: [Par ici, les moches.],
)
