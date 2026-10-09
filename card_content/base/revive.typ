#import "../../card_structure/equipment_card.typ": equipment_card

#let revive = equipment_card(
  "Réanimation",
  kind: "Atout, Base",
  dice: ("6", "6",),
  effect: [Un joueur adjacent revient en jeu avec 1~PV restant. Il perd 2~PA jusqu'à la fin de la vague.],
)
