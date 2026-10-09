#import "creat_card.typ": creat_card

// Asset card ("Atout") or starting card.
// `uses` is only printed above 1, which is the default in the rules.
#let equipment_card(
  name,
  kind: "Atout, Matériel",
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
