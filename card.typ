#import "@preview/cetz:0.4.0"

#let card(
  name,
  cost: none,
  type_line: "",
  rules_text: "",
  behaviors_text: "",
  flavor_text: none,
  power: none,
  toughness: none,
  artist: none,
  rarity: "common",
  set_symbol: none,
  background_color: rgb("#f5f5dc"),
  border_color: black,
  rules_text_size: 8pt,
  behaviors_text_size: 8pt,
  flavor_text_size: 7pt,
  rules_line_spacing: 0.5em,
  inter_rules_spacing: 0.9em,
  behaviors_line_spacing: 0.5em,
  inter_behaviors_spacing: 0.4em,
  rules_behaviors_flavor_spacing: 1.0em,
  flavor_line_spacing: 0.5em,
) = {
  // Variables principales
  let card_width = 63mm
  let card_height = 88mm
  
  // Marges
  let vertical_margin = 1.5mm
  let horizontal_margin = 1.5mm

  // Zone du titre + Zone du coût
  let name_box_size = 8.5mm
  let name_box_top = card_height - vertical_margin
  let name_box_bottom = name_box_top - name_box_size
  
  let mana_box_top = name_box_top
  let mana_box_bottom = name_box_bottom
  let mana_box_width = 9mm

  let name_box_right = if cost != none { card_width - horizontal_margin - mana_box_width - horizontal_margin } else { card_width - horizontal_margin }
  let name_box_center_x = (horizontal_margin + name_box_right) / 2
  
  // Zone d'illustration
  let art_box_size = 39mm
  let art_box_top = name_box_bottom - vertical_margin
  let art_box_bottom = art_box_top - art_box_size
  
  // Zone de force/endurance
  let power_toughness_size = 5mm
  let power_toughness_bottom = vertical_margin
  let power_toughness_top = vertical_margin + power_toughness_size
  
  // Zone de texte (ajustée si force/endurance présente)
  let text_box_top = art_box_bottom - vertical_margin
  let text_box_bottom = if power != none and toughness != none { power_toughness_top + vertical_margin } else { vertical_margin }
  let text_box_center_y = ((text_box_top + text_box_bottom) / 2) - rules_text_size / 2
  
  // Couleurs selon la rareté
  let rarity_colors = (
    common: black,
    uncommon: rgb("#c0c0c0"),
    rare: rgb("#ffd700"),
    mythic: rgb("#ff8c00"),
  )
  
  let rarity_color = rarity_colors.at(rarity, default: black)
  
  // Fonction pour traiter les règles avec espacement personnalisé
  let process_rules_list(rules_list) = {
    if type(rules_list) == str {
      // Si c'est une string simple, la retourner telle quelle
      return rules_list
    } else if type(rules_list) == array {
      // Si c'est un array, joindre avec des espaces personnalisés
      let result = ()
      for (i, rule) in rules_list.enumerate() {
        if i > 0 {
          result = result + (v(inter_rules_spacing, weak: true),)
        }
        result = result + (rule,)
      }
      return result.join()
    } else {
      return rules_list
    }
  }
  
  // Fonction pour traiter les behaviors avec des points noirs
  let process_behaviors_list(behaviors_list) = {
    if type(behaviors_list) == str {
      // Si c'est une string simple, la retourner telle quelle
      return behaviors_list
    } else if type(behaviors_list) == array {
      // Si c'est un array, ajouter des points noirs devant chaque élément
      let result = ()
      for (i, behavior) in behaviors_list.enumerate() {
        if i > 0 {
          result = result + (v(inter_behaviors_spacing, weak: true),)
        }
        result = result + (text(fill: black)[• #behavior],)
      }
      return result.join()
    } else {
      return behaviors_list
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
    
    // Zone du titre (ajustée pour laisser la place au coût de mana)
    rect(
      name: "name_box",
      (horizontal_margin, name_box_top),
      (name_box_right, name_box_bottom),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )
    
    // Titre
    content(
      (name_box_center_x, name_box_top - 3mm),
      anchor: "center",
      text(size: 11pt, weight: "bold")[#name],
    )
    
    // Type de la carte (sous le titre)
    content(
      (name_box_center_x, name_box_top - 6.5mm),
      anchor: "center",
      text(size: 7pt)[#type_line],
    )
    
    // Boîte du coût de mana (séparée)
    if cost != none {
      rect(
        name: "mana_box",
        (card_width - horizontal_margin - mana_box_width, mana_box_top),
        (card_width - horizontal_margin, mana_box_bottom),
        radius: (rest: 1mm),
        fill: white,
        stroke: (thickness: 0.5mm, paint: black)
      )
      
      // Coût de mana centré dans sa boîte
      content(
        (card_width - horizontal_margin - mana_box_width/2, (mana_box_top + mana_box_bottom)/2),
        anchor: "center",
        text(size: 11pt, weight: "bold")[#cost],
      )
    }
    
    // Zone d'illustration (placeholder)
    rect(
      name: "art_box",
      (horizontal_margin, art_box_bottom),
      (card_width - horizontal_margin, art_box_top),
      radius: (rest: 1mm),
      fill: rgb("#e6e6fa"),
      stroke: (thickness: 0.5mm, paint: black)
    )
    
    // Texte "ART" au centre de la zone d'illustration
    content(
      (card_width/2, art_box_top - art_box_size / 2),
      anchor: "center",
      text(size: 14pt, fill: rgb("#999999"))[ART],
    )
    
    // Zone de texte de règles
    rect(
      name: "text_box",
      (horizontal_margin, text_box_bottom),
      (card_width - horizontal_margin, text_box_top),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )

    // Contenu de la zone de texte (règles + behaviors + flavor)
    let text_content = {
      if rules_text != "" {
        set text(size: rules_text_size)
        set par(leading: rules_line_spacing)
        process_rules_list(rules_text)
      }
      
      if behaviors_text != "" {
        if rules_text != "" {
          v(rules_behaviors_flavor_spacing, weak: true)
        }
        set text(size: behaviors_text_size)
        set par(leading: behaviors_line_spacing)
        process_behaviors_list(behaviors_text)
      }
      
      if flavor_text != none {
        if rules_text != "" or behaviors_text != "" {
          v(rules_behaviors_flavor_spacing, weak: true)
        }
        align(center)[
          #set text(size: flavor_text_size, style: "italic", fill: rgb("#666666"))
          #set par(leading: flavor_line_spacing)
          #flavor_text
        ]
      }
    }

    // Placement du contenu centré verticalement dans la zone de texte
    content(
      (card_width/2, text_box_center_y),
      anchor: "center",
      box(
        width: card_width - 6mm,
        align(horizon, text_content)
      )
    )
    
    // Force et endurance (pour les créatures)
    if power != none and toughness != none {
      rect(
        name: "pt_box",
        (card_width/2 - 6mm, power_toughness_bottom),
        (card_width/2 + 6mm, power_toughness_top),
        radius: (rest: 1mm),
        fill: white,
        stroke: (thickness: 0.5mm, paint: black)
      )
      
      content(
        (card_width/2, (power_toughness_top + power_toughness_bottom) / 2),
        anchor: "center",
        text(size: 12pt, weight: "bold")[#power/#toughness],
      )
    }

    // Symbole du set
    if set_symbol != none {
      content(
        (card_width - 3mm, 3mm),
        anchor: "south-east",
        text(size: 5pt)[#set_symbol],
      )
    }

    // Nom de l'artiste
    if artist != none {
      content(
        (3mm, 3mm),
        anchor: "south-west",
        text(size: 5pt, fill: rgb("#666666"))[#artist],
      )
    }
  })
}