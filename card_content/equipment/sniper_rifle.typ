#import "../../card_structure/equipment_card.typ": equipment_card

#let sniper_rifle = equipment_card(
  "Fusil de précision",
  kind: "Atout, Arme",
  charge: 2,
  dice: ("6",),
  effect: [Infligez 4~dégâts à une engeance à portée~4.],
)
