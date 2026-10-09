#import "../../card_structure/equipment_card.typ": equipment_card

#let stun_grenade = equipment_card(
  "Grenade assourdissante",
  kind: "Atout, Arme, Explosif",
  slots: 1,
  dice: ("4+",),
  effect: [Ciblez jusqu'à 3~engeances d'une même zone à portée~2. Paralyser 3 sur chacune.],
  flavor: [Fermez les yeux. Ouvrez la bouche.],
)
