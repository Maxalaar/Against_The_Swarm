#import "../../card_structure/equipment_card.typ": equipment_card

#let revive = equipment_card(
  "Réanimation",
  kind: "Carte de base",
  dice: ("6", "6",),
  effect: [Un joueur adjacent revient en jeu à 1~PV. Il perd 2~PA jusqu'à la fin de la vague (minimum 1~PA).],
)
