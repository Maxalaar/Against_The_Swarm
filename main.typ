#import "card_structure/creat_card.typ": creat_card
#import "paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

#let language = "fr"

#import "card_content/drone/drone.typ": make_drone
#import "card_content/warrior/warrior.typ": make_warrior
#import "card_content/swarmer/swarmer.typ": make_swarmer
#import "card_content/martyr/martyr.typ": make_martyr

#let all-cards = (
    make_drone(language: language),
    make_warrior(language: language),
    make_swarmer(language: language),
    make_martyr(language: language),
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)