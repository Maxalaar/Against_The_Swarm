#import "card_structure/creat_card.typ": creat_card
#import "paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

#let language = "fr"

#import "card_content/broodling/broodling.typ": make_broodling
#import "card_content/spitter/spitter.typ": make_spitter
#import "card_content/warrior/warrior.typ": make_warrior
#import "card_content/swarmer/swarmer.typ": make_swarmer
#import "card_content/martyr/martyr.typ": make_martyr
#import "card_content/bombard/bombard.typ": make_bombard
#import "card_content/protector/protector.typ": make_protector

#let all-cards = (
    make_broodling(language: language),
    make_spitter(language: language),
    make_warrior(language: language),
    make_swarmer(language: language),
    make_martyr(language: language),
    make_bombard(language: language),
    make_protector(language: language),
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)