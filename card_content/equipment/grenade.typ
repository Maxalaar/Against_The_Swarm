#import "../../card_structure/equipment_card.typ": equipment_card

#let grenade = equipment_card(
  "Grenade",
  kind: "Atout, Arme",
  charge: 1,
  dice: ("5+",),
  effect: [Ciblez jusqu'à 3 engeances d'une même zone à portée~2. Infligez 2~dégâts à chacune.],
)
