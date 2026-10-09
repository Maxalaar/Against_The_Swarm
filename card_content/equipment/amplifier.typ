#import "../../card_structure/equipment_card.typ": equipment_card

#let amplifier = equipment_card(
  "Amplificateur",
  kind: "Atout, Matériel",
  slots: 1,
  dice: (),
  effect: [Quand un de vos atouts utilise X, ajoutez 1 à X.],
  flavor: [Le bouton va jusqu'à sept.],
)
