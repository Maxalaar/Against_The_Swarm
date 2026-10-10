#import "build.typ": all_aces
#import "templates/paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

// Every ace and the tracking card, read from cards/aces.toml
#paginated_card_grid(all_aces(), cards-per-page: 9, columns: 3)
