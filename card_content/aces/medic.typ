#import "../../card_structure/ace_card.typ": ace_card

#let medic = ace_card(
  "Le Toubib",
  hp: 5,
  ap: 5,
  charge: 5,
  passive: [Quand vous soignez un As, il gagne aussi Garde~1.],
  flavor: [Il recoud d'une main et tire de l'autre.],
)
