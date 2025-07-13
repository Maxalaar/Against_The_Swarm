#import "card_structure/creat_card.typ": creat_card
#import "paginated_card_grid.typ": paginated_card_grid
#import "card_structure/rules_list.typ": rules_list
#import "card_structure/behaviors_list.typ": behaviors_list

#set page(
  paper: "a4",
  margin: 0.5cm,
)

#import "card_content/drone/drone.typ": drone
#import "card_content/swarmer/swarmer.typ": swarmer

#let all-cards = (
    drone,
    swarmer,
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)