#import "../../card_structure/equipment_card.typ": equipment_card

#let frag_charge = equipment_card(
  "Charge à fragmentation",
  kind: "Atout, Matériel",
  slots: 1,
  dice: (),
  effect: [Vos Explosifs ciblent 1~engeance de plus.],
  flavor: [Un cadeau pour chacun.],
)
