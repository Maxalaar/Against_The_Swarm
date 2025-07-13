#import "@preview/cetz:0.4.0"

#let card(
  title,
  cost: none,
  type_line: "",
  rules_text: "",
  flavor_text: none,
  power: none,
  toughness: none,
  artist: none,
  rarity: "common",
  set_symbol: none,
  background_color: rgb("#f5f5dc"), // Beige par défaut
  border_color: black,
  rules_text_size: 7pt,
  flavor_text_size: 6pt,
  rules_flavor_spacing: 0.5em,
  rules_line_spacing: 1.2em,
  flavor_line_spacing: 1.2em,
  inter_rules_spacing: 0.8em, // Espacement entre les règles
) = {
  let card_width = 63mm
  let card_height = 88mm
  
  // Couleurs selon la rareté
  let rarity_colors = (
    common: black,
    uncommon: rgb("#c0c0c0"),
    rare: rgb("#ffd700"),
    mythic: rgb("#ff8c00"),
  )
  
  let rarity_color = rarity_colors.at(rarity, default: black)
  
  // Fonction pour traiter les règles avec espacement personnalisé
  let process_rules_list(rules_content) = {
    if type(rules_content) == str {
      // Si c'est une string simple, la retourner telle quelle
      return rules_content
    } else if type(rules_content) == array {
      // Si c'est un array, joindre avec des espaces personnalisés
      let result = ()
      for (i, rule) in rules_content.enumerate() {
        if i > 0 {
          result = result + (v(inter_rules_spacing, weak: true),)
        }
        result = result + (rule,)
      }
      return result.join()
    } else {
      return rules_content
    }
  }
  
  cetz.canvas({
    import cetz.draw: *
    
    // Fond de la carte
    rect(
      name: "background",
      (0, 0),
      (card_width, card_height),
      radius: (rest: 2.5mm),
      fill: background_color,
    )
    
    // Bordure principale
    rect(
      name: "border",
      (0, 0),
      (card_width, card_height),
      radius: (rest: 2.5mm),
      stroke: (
        thickness: 1mm,
        paint: border_color,
      )
    )
    
    // Zone du titre
    rect(
      name: "title_box",
      (2mm, card_height - 2mm),
      (card_width - 2mm, card_height - 12mm),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )
    
    // Titre
    content(
      (3mm, card_height - 7mm),
      anchor: "west",
      text(size: 10pt, weight: "bold")[#title],
    )
    
    // Coût de mana (coin supérieur droit)
    if cost != none {
      content(
        (card_width - 3mm, card_height - 7mm),
        anchor: "east",
        text(size: 9pt, weight: "bold")[#cost],
      )
    }
    
    // Zone d'illustration (placeholder)
    rect(
      name: "art_box",
      (2mm, card_height - 42mm),
      (card_width - 2mm, card_height - 14mm),
      radius: (rest: 1mm),
      fill: rgb("#e6e6fa"),
      stroke: (thickness: 0.5mm, paint: black)
    )
    
    // Texte "ART" au centre de la zone d'illustration
    content(
      (card_width/2, card_height - 28mm),
      anchor: "center",
      text(size: 14pt, fill: rgb("#999999"))[ART],
    )
    
    // Zone de type
    rect(
      name: "type_box",
      (2mm, card_height - 54mm),
      (card_width - 2mm, card_height - 44mm),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )
    
    // Ligne de type
    content(
      (3mm, card_height - 49mm),
      anchor: "west",
      text(size: 8pt, weight: "bold")[#type_line],
    )
    
    // Symbole de rareté et d'extension
    if set_symbol != none {
      content(
        (card_width - 3mm, card_height - 49mm),
        anchor: "east",
        text(size: 8pt, fill: rarity_color)[#set_symbol],
      )
    }
    
    // Zone de texte de règles (ajustée si force/endurance présente)
    let text_box_bottom = if power != none and toughness != none { 9mm } else { 2mm }
    let text_box_top = card_height - 56mm

    rect(
      name: "text_box",
      (2mm, text_box_bottom),
      (card_width - 2mm, text_box_top),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )

    // Contenu de la zone de texte (règles + flavor)
    let text_content = {
      if rules_text != "" {
        set text(size: rules_text_size)
        set par(leading: rules_line_spacing)
        process_rules_list(rules_text)
      }
      
      if flavor_text != none {
        if rules_text != "" {
          v(rules_flavor_spacing, weak: true)
        }
        align(center)[
          #set text(size: flavor_text_size, style: "italic", fill: rgb("#666666"))
          #set par(leading: flavor_line_spacing)
          #flavor_text
        ]
      }
    }

    // Calcul correct du centre vertical de la zone de texte
    let text_box_center_y = (text_box_top + text_box_bottom) / 2

    // Placement du contenu centré verticalement dans la zone de texte
    content(
      (card_width/2, text_box_center_y),
      anchor: "center",
      box(
        width: card_width - 6mm,
        align(horizon, text_content)
      )
    )
    
    // Force et endurance (pour les créatures) - maintenant centrée et ajustée au contenu
    if power != none and toughness != none {
      rect(
        name: "pt_box",
        (card_width/2 - 6mm, 1.5mm),
        (card_width/2 + 6mm, 7.5mm),
        radius: (rest: 1mm),
        fill: white,
        stroke: (thickness: 0.5mm, paint: black)
      )
      
      content(
        (card_width/2, 4.5mm),
        anchor: "center",
        text(size: 12pt, weight: "bold")[#power/#toughness],
      )
    }
    
    // Nom de l'artiste (en bas à gauche, très petit)
    if artist != none {
      content(
        (3mm, 3mm),
        anchor: "south-west",
        text(size: 5pt, fill: rgb("#666666"))[#artist],
      )
    }
  })
}