#import "paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

#import "card_content/swarmer/swarmer.typ": swarmer
#import "card_content/ram/ram.typ": ram
#import "card_content/martyr/martyr.typ": martyr
#import "card_content/bombard/bombard.typ": bombard
#import "card_content/protector/protector.typ": protector
#import "card_content/broodling/broodling.typ": broodling
#import "card_content/spitter/spitter.typ": spitter
#import "card_content/warrior/warrior.typ": warrior

// Cartes de la pile Essaim, puis jetons (jamais dans la pile).
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
