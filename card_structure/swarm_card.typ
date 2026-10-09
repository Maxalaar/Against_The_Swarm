// Swarm card, 63 x 88 mm.
// - `threat`: Menace value, top right; tokens have none.
// - `zones`: what the creature does when it activates in zone 3, zone 2, zone 1.
// - `inline_zones`: true puts the three zones side by side on one line; meant for
//   short actions such as a single keyword. false (default) gives one line per zone.
// - `zones_at_bottom`: true pins the zones to the bottom of the text box, with the
//   passive above them; false (default) puts the zones first.
// - `passive`: optional always-on text, printed under the zone lines.
// - `attack` / `health`: bottom-left and bottom-right boxes.
#let swarm_card(
  name,
  threat: none,
  token: false,
  zones: (),
  inline_zones: false,
  zones_at_bottom: false,
  passive: none,
  flavor: none,
  attack: none,
  health: none,
) = {
  let width = 63mm
  let height = 88mm
  let margin = 1.5mm
  let corner_box = 9mm
  let frame(x, y, w, h, body, fill: white, inset: 0mm) = place(top + left, dx: x, dy: y, box(
    width: w,
    height: h,
    radius: 1mm,
    stroke: 0.5mm + black,
    fill: fill,
    inset: inset,
    body,
  ))
  let number(value) = align(center + horizon, text(size: 11pt, weight: "bold")[#value])
  let zone_block(n) = box(
    width: 3.9mm,
    height: 3.9mm,
    radius: 0.9mm,
    stroke: 0.7pt + black,
    align(center + horizon, text(size: 7.5pt, weight: "bold")[#n]),
  )

  box(width: width, height: height, {
    place(top + left, rect(width: width, height: height, radius: 2.5mm, fill: rgb("#cfcfca"), stroke: 1mm + black))

    // Top row: name and type, then the threat box.
    let name_width = if threat != none { width - 3 * margin - corner_box } else { width - 2 * margin }
    frame(margin, margin, name_width, 8.5mm, align(center + horizon, {
      text(size: 11pt, weight: "bold")[#name]
      v(-2.3mm)
      text(size: 7pt)[#if token [Essaim, Créature, Jeton] else [Essaim, Créature]]
    }))
    if threat != none {
      frame(width - margin - corner_box, margin, corner_box, 8.5mm, number(threat))
    }

    // Art.
    frame(
      margin, 11.5mm, width - 2 * margin, 39mm,
      align(center + horizon, text(size: 14pt, fill: rgb("#999999"))[ART]),
      fill: rgb("#e6e6fa"),
    )

    // Text box: one line per zone, always 3, 2, 1, then the passive.
    frame(margin, 52mm, width - 2 * margin, 26mm, inset: (x: 2mm, y: 1.4mm), {
      set text(size: 9pt)
      set par(leading: 0.4em)
      let zone_lines = if inline_zones {
        grid(
          columns: (1fr,) * zones.len(),
          align: center + horizon,
          ..zones.enumerate().map(((i, action)) => grid(
            columns: 2,
            column-gutter: 1.2mm,
            align: horizon,
            zone_block(3 - i), action,
          ))
        )
      } else {
        grid(
          columns: (3.9mm, 1fr),
          column-gutter: 1.6mm,
          row-gutter: 0.6mm,
          align: (center + horizon, left + horizon),
          ..zones.enumerate().map(((i, action)) => (zone_block(3 - i), action)).flatten()
        )
      }
      let rule = line(length: 100%, stroke: 0.4pt + luma(130))
      let passive_text = if passive != none { text(size: 8.5pt, passive) }
      if zones_at_bottom {
        passive_text
        place(bottom + left, block(width: 100%, {
          if passive != none { rule; v(1.2mm, weak: true) }
          zone_lines
        }))
      } else {
        zone_lines
        if passive != none {
          v(1.2mm, weak: true)
          rule
          v(1.2mm, weak: true)
          passive_text
        }
      }
    })

    // Bottom row: attack, flavor, health.
    frame(margin, 79.5mm, corner_box, 7mm, number(attack))
    frame(width - margin - corner_box, 79.5mm, corner_box, 7mm, number(health))
    if flavor != none {
      frame(2 * margin + corner_box, 79.5mm, width - 4 * margin - 2 * corner_box, 7mm, inset: (x: 1mm), align(center + horizon, {
        set par(leading: 0.3em)
        text(size: 6.3pt, style: "italic", flavor)
      }))
    }
  })
}

// Zone actions shared by most creatures.
#let advance = [*Avance.*]
#let retreat = [*Recule.*]
#let attack = [*Attaque.*]
