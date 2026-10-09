#import "../../card_structure/equipment_card.typ": equipment_card

#let radio = equipment_card(
  "Radio",
  kind: "Atout, Matériel",
  slots: 1,
  dice: ("",),
  effect: [Donnez ce dé à un autre joueur, qui l'ajoute à sa réserve avec la même valeur.],
  uses: 2,
  flavor: [À toi de jouer.],
)
