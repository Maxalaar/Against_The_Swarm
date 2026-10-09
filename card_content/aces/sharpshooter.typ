#import "../../card_structure/ace_card.typ": ace_card

#let sharpshooter = ace_card(
  "La Tireuse",
  hp: 5,
  ap: 5,
  charge: 5,
  passive: [Vos Armes ont +1 de portée.],
  flavor: [Si elle vous voit, c'est déjà fini.],
)
