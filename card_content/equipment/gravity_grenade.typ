#import "../../card_structure/equipment_card.typ": equipment_card

#let gravity_grenade = equipment_card(
  "Grenade à gravité",
  kind: "Atout, Arme, Explosif",
  slots: 1,
  dice: ("3+",),
  effect: [Ciblez jusqu'à 4~engeances de votre secteur. Déplacez-les toutes dans une même zone.],
  flavor: [Tout le monde au milieu.],
)
