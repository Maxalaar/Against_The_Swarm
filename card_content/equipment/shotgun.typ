#import "../../card_structure/equipment_card.typ": equipment_card

#let shotgun = equipment_card(
  "Fusil à pompe",
  kind: "Atout, Arme",
  charge: 2,
  dice: ("3+",),
  effect: [Ciblez jusqu'à 2 créatures d'une même zone à portée~2. Infligez 2~dégâts à chacune.],
)
