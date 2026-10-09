#import "paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

#import "card_content/swarm/swarmer.typ": swarmer
#import "card_content/swarm/ram.typ": ram
#import "card_content/swarm/martyr.typ": martyr
#import "card_content/swarm/bombard.typ": bombard
#import "card_content/swarm/protector.typ": protector
#import "card_content/swarm/broodling.typ": broodling
#import "card_content/swarm/spitter.typ": spitter
#import "card_content/swarm/warrior.typ": warrior

#let all-cards = (
  swarmer,
  ram,
  martyr,
  bombard,
  protector,
  broodling,
  spitter,
  warrior,
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)
