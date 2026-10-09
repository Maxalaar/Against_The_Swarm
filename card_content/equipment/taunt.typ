#import "../../card_structure/equipment_card.typ": equipment_card

#let taunt = equipment_card(
  "Provocation",
  kind: "Atout, Technique",
  slots: 1,
  dice: ("3+",),
  effect: [Ciblez jusqu'à 3~engeances d'un secteur adjacent. Elles passent dans la même zone de votre secteur. Garde 2.],
  flavor: [Hé~! C'est moi que tu cherches.],
)
