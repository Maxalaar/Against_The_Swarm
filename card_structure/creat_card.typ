#import "@preview/cetz:0.4.0"

#let creat_card(
  name,
  cost: none,
  type: none,
  capacity: none,
  behavior: none,
  flavor: none,
  power: none,
  toughness: none,
  artist: none,
  set_symbol: none,
  background_color: rgb("#f5f5dc"),
  border_color: black,
  capacity_text_size: 9pt,
  behavior_text_size: 9pt,
  flavor_size: 8pt,
  capacity_line_spacing: 0.35em,
  inter_capacity_spacing: 0.9em,
  behavior_line_spacing: 0.5em,
  inter_behavior_spacing: 0.35em,
  capacity_behavior_flavor_spacing: 1.0em,
  flavor_line_spacing: 0.3em,
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
  
  let cost_box_top = name_box_top
  let cost_box_bottom = name_box_bottom
  let cost_box_width = 9mm

  let name_box_right = if cost != none { card_width - horizontal_margin - cost_box_width - horizontal_margin } else { card_width - horizontal_margin }
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
  let text_box_center_y = ((text_box_top + text_box_bottom) / 2) - capacity_text_size / 2

  let process_type(type) = {
    let result = ()
    for (i, element) in type.enumerate() {
      if i > 0 {
        result = result + (", ",)
      }
      result = result + (element,)
    }
    return result.join()
  }
  
  let process_capacity(capacity) = {
    let result = ()
    for (i, element) in capacity.enumerate() {
      if i > 0 {
        result = result + (v(inter_capacity_spacing, weak: true),)
      }
      result = result + (element,)
    }
    return result.join()
  }
  
  let process_behavior(behavior) = {
    let result = ()
    for (i, element) in behavior.enumerate() {
      if i > 0 {
        result = result + (v(inter_behavior_spacing, weak: true),)
      }
      result = result + (text(fill: black)[• #element],)
    }
    return result.join()
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
    
    // Nom
    rect(
      name: "name_box",
      (horizontal_margin, name_box_top),
      (name_box_right, name_box_bottom),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )
    
    content(
      (name_box_center_x, name_box_top - 3mm),
      anchor: "center",
      text(size: 11pt, weight: "bold")[#name],
    )
    
    // Type
    content(
      (name_box_center_x, name_box_top - 6.5mm),
      anchor: "center",
      text(size: 7pt)[#process_type(type)],
    )
    
    // Ccoût
    if cost != none {
      rect(
        name: "cost_box",
        (card_width - horizontal_margin - cost_box_width, cost_box_top),
        (card_width - horizontal_margin, cost_box_bottom),
        radius: (rest: 1mm),
        fill: white,
        stroke: (thickness: 0.5mm, paint: black)
      )
    
      content(
        (card_width - horizontal_margin - cost_box_width/2, (cost_box_top + cost_box_bottom)/2),
        anchor: "center",
        text(size: 11pt, weight: "bold")[#cost],
      )
    }
    
    // Illustration
    rect(
      name: "art_box",
      (horizontal_margin, art_box_bottom),
      (card_width - horizontal_margin, art_box_top),
      radius: (rest: 1mm),
      fill: rgb("#e6e6fa"),
      stroke: (thickness: 0.5mm, paint: black)
    )
    
    content(
      (card_width/2, art_box_top - art_box_size / 2),
      anchor: "center",
      text(size: 14pt, fill: rgb("#999999"))[ART],
    )
    
    // Text (capacity + behavior + flavor)
    rect(
      name: "text_box",
      (horizontal_margin, text_box_bottom),
      (card_width - horizontal_margin, text_box_top),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )

    let text_content = {
      if capacity != none {
        set text(size: capacity_text_size)
        set par(leading: capacity_line_spacing)
        process_capacity(capacity)
      }
      
      if behavior != none {
        if capacity != none {
          v(capacity_behavior_flavor_spacing, weak: true)
        }
        set text(size: behavior_text_size)
        set par(leading: behavior_line_spacing)
        process_behavior(behavior)
      }
      
      if flavor != none {
        if capacity != none or behavior != none {
          v(capacity_behavior_flavor_spacing, weak: true)
        }
        align(center)[
          #set text(size: flavor_size, style: "italic", fill: rgb("#666666"))
          #set par(leading: flavor_line_spacing)
          #flavor
        ]
      }
    }

    content(
      (card_width/2, text_box_center_y),
      anchor: "center",
      box(
        width: card_width - 6mm,
        align(horizon, text_content)
      )
    )
    
    // Force et endurance
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

    // Symbole
    if set_symbol != none {
      content(
        (card_width - 3mm, 3mm),
        anchor: "south-east",
        text(size: 5pt)[#set_symbol],
      )
    }

    // Artiste
    if artist != none {
      content(
        (3mm, 3mm),
        anchor: "south-west",
        text(size: 5pt, fill: rgb("#666666"))[#artist],
      )
    }
  })
}