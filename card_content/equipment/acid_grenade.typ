#import "../../card_structure/equipment_card.typ": equipment_card

#let acid_grenade = equipment_card(
  "Grenade corrosive",
  kind: "Atout, Arme, Explosif",
  slots: 1,
  dice: ("4+",),
  effect: [Ciblez jusqu'à 3~engeances d'une même zone à portée~2. Infligez 2~dégâts à chacune. Ces dégâts ignorent le Blindage.],
  flavor: [Les carapaces fondent aussi.],
)
