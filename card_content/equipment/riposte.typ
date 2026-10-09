#import "../../card_structure/equipment_card.typ": equipment_card

#let riposte = equipment_card(
  "Riposte",
  kind: "Atout, Technique",
  charge: 1,
  dice: ("4+",),
  effect: [Garde 1. La prochaine engeance qui vous attaque subit 3~dégâts.],
  flavor: [Vas-y. Essaie.],
)
