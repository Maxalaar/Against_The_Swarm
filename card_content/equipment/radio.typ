#import "../../card_structure/equipment_card.typ": equipment_card

#let radio = equipment_card(
  "Radio",
  kind: "Atout, Matériel",
  storage: 1,
  cost: [un dé quelconque],
  effect: [Donnez ce dé à un autre joueur, qui l'ajoute à sa réserve avec la même valeur.],
  uses: 2,
)
