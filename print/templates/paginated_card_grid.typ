// Fonction pour créer une grille avec pagination automatique
#let paginated_card_grid(cards, cards-per-page: 6, columns: 2) = {
  let chunks = ()
  let current-chunk = ()
  
  for (i, card) in cards.enumerate() {
    current-chunk.push(card)
    
    if current-chunk.len() == cards-per-page or i == cards.len() - 1 {
      chunks.push(current-chunk)
      current-chunk = ()
    }
  }
  
  for (i, chunk) in chunks.enumerate() {
    if i > 0 {
      pagebreak()
    }
    
    align(center)[
      #grid(
        columns: columns,
        column-gutter: 1em,
        row-gutter: 1em,
        ..chunk
      )
    ]
  }
}