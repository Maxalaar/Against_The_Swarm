#import "../../card_structure/equipment_card.typ": equipment_card

#let frag_charge = equipment_card(
  "Charge à fragmentation",
  kind: "Atout, Matériel",
  slots: 1,
  dice: (),
  effect: [Au début de votre tour, lancez 1~dé de plus. Il ne peut servir qu'à payer vos Explosifs.],
  flavor: [Il y en a toujours une de plus au fond du sac.],
)
