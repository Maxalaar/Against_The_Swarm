#import "build.typ": all_swarm
#import "templates/paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

// Every swarm card, read from cards/swarm.toml
#paginated_card_grid(all_swarm(), cards-per-page: 9, columns: 3)
