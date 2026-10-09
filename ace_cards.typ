#import "paginated_card_grid.typ": paginated_card_grid
#import "card_structure/ace_card.typ": tracking_card

#set page(
  paper: "a4",
  margin: 0.5cm,
)

// The Aces: characters the players choose from
#import "card_content/aces/brute.typ": brute
#import "card_content/aces/sharpshooter.typ": sharpshooter
#import "card_content/aces/gambler.typ": gambler
#import "card_content/aces/mechanic.typ": mechanic
#import "card_content/aces/medic.typ": medic

#let all-cards = (
  brute,
  sharpshooter,
  gambler,
  mechanic,
  medic,
  // One tracking card per player, for Wounds and Guard
  tracking_card(),
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)
