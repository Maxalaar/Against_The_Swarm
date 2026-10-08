#import "creat_card.typ": creat_card

// Carte d'équipement ou carte de base.
// `uses` n'est affiché que s'il est supérieur à 1 (1 est la valeur par défaut des règles).
#let equipment_card(
  name,
  kind: "Équipement",
  storage: 0,
  cost: none,
  effect: none,
  uses: 1,
  flavor: none,
) = creat_card(
  name,
  cost: storage,
  cost_label: "Stockage",
  type: (kind,),
  capacity: (
    [*Coût :* #cost],
    if uses > 1 [#effect #uses utilisations.] else [#effect],
  ),
  flavor: flavor,
  background_color: rgb("#c5d3e0"),
)
