#import "paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

// Evolution rank I: the starting pile
#import "card_content/swarm/swarmer.typ": swarmer
#import "card_content/swarm/ram.typ": ram
#import "card_content/swarm/martyr.typ": martyr
#import "card_content/swarm/bombard.typ": bombard
#import "card_content/swarm/protector.typ": protector
#import "card_content/swarm/leaper.typ": leaper
#import "card_content/swarm/burrower.typ": burrower
#import "card_content/swarm/carrier.typ": carrier
#import "card_content/swarm/brooder.typ": brooder
#import "card_content/swarm/hydra.typ": hydra
#import "card_content/swarm/jammer.typ": jammer

// Evolution ranks II and above, added to the pile as waves go by
#import "card_content/swarm/colossus.typ": colossus
#import "card_content/swarm/ironclad.typ": ironclad
#import "card_content/swarm/alpha.typ": alpha
#import "card_content/swarm/matriarch.typ": matriarch

// Tokens, never shuffled into the pile
#import "card_content/swarm/broodling.typ": broodling
#import "card_content/swarm/spitter.typ": spitter
#import "card_content/swarm/warrior.typ": warrior
#import "card_content/swarm/bubo.typ": bubo

#let all-cards = (
  swarmer,
  ram,
  martyr,
  bombard,
  protector,
  leaper,
  burrower,
  carrier,
  brooder,
  hydra,
  jammer,
  colossus,
  ironclad,
  alpha,
  matriarch,
  broodling,
  spitter,
  warrior,
  bubo,
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)
