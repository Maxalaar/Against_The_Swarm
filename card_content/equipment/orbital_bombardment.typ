#import "../../card_structure/equipment_card.typ": equipment_card

#let orbital_bombardment = equipment_card(
  "Bombardement orbital",
  kind: "Atout, Arme, Explosif",
  charge: 3,
  dice: ("6", "6",),
  effect: [Choisissez une zone d'un secteur. Ciblez‑y jusqu'à 5~engeances. Infligez 5~dégâts à chacune.],
  flavor: [Quelqu'un, là-haut, vous aime bien.],
)
