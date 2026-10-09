#import "paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

#import "card_content/base/pistol.typ": pistol
#import "card_content/base/rifle_butt.typ": rifle_butt
#import "card_content/base/move.typ": move
#import "card_content/base/revive.typ": revive

#let all-cards = (
  pistol,
  rifle_butt,
  move,
  revive,
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)
