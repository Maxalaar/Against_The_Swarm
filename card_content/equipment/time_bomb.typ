#import "../../card_structure/equipment_card.typ": equipment_card

#let time_bomb = equipment_card(
  "Bombe à retardement",
  kind: "Atout, Arme, Explosif",
  charge: 2,
  dice: ("",),
  effect: [Armer 1. Quand cet atout atteint 3~marqueurs, retirez-les tous. Ciblez jusqu'à 4~engeances d'une même zone à portée~2. Infligez 4~dégâts à chacune.],
  uses: 2,
  flavor: [Tic. Tic. Tic.],
)
