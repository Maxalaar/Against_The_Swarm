#import "build.typ": all_assets
#import "templates/paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

// Every asset, read from cards/assets.toml
#paginated_card_grid(all_assets(), cards-per-page: 9, columns: 3)
