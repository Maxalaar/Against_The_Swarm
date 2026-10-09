#import "../../card_structure/equipment_card.typ": equipment_card

#let machine_gun = equipment_card(
  "Mitrailleuse",
  kind: "Atout, Arme",
  charge: 2,
  dice: ("",),
  effect: [Infligez 1~dégât à portée~2.],
  uses: 5,
  flavor: [Elle ne vise pas. Elle insiste.],
)
