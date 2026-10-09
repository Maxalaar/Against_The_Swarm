#import "../../card_structure/equipment_card.typ": equipment_card

#let vibro_blade = equipment_card(
  "Lame vibrante",
  kind: "Atout, Matériel",
  slots: 1,
  dice: (),
  effect: [Vos Armes de Mêlée infligent +1~dégât.],
  flavor: [Elle chante quand elle coupe.],
)
