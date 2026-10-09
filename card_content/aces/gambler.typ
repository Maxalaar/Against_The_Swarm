#import "../../card_structure/ace_card.typ": ace_card

#let gambler = ace_card(
  "Le Flambeur",
  hp: 5,
  ap: 5,
  charge: 5,
  passive: [Une fois par tour, relancez tous vos dés.],
  flavor: [Il mise tout. Tout le temps.],
)
