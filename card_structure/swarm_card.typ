#import "equipment_card.typ": die

// Swarm card, 63 x 88 mm.
// - `rank`: evolution rank, 1 to 4, shown as a Roman numeral left of the name; none hides it.
// - `threat`: Menace value, top right; tokens have none.
// - `zones`: what the creature does when it activates in zone 3, zone 2, zone 1.
// - `zones_per_line`: how the three zones are split over lines, in order 3, 2, 1.
//   (3,) puts them all on one line, (2, 1) gives zone 1 a line of its own,
//   (1, 1, 1) gives one line per zone. A zone alone on its line can hold a full sentence.
// - `structure`: true marks a Structure, a creature that never moves. It takes
//   `activation` instead of `zones`: one effect, applied whatever its zone.
// - `impulse`: true marks an Impulsion, a one-shot effect that resolves and is discarded.
//   It has no zones, attack or health; its text goes in `passive`.
// - `mutation`: true marks a Mutation, a card attached to a creature. No zones or stats;
//   `passive` holds which creature it mutates, then what it grants.
// - `emprise`: true marks an Emprise, a lasting effect on a sector with no zone or stats.
//   Players remove it by paying `removal`: either dice labels, as on asset cards,
//   or a number, the total to reach with any dice.
// - `passive`: optional always-on text, printed under the zone lines. Pass an array
//   to give several abilities; each gets its own paragraph.
// - `attack` / `health`: bottom-left and bottom-right boxes.
#let swarm_card(
  name,
  rank: none,
  threat: none,
  token: false,
  zones: (),
  zones_per_line: (3,),
  structure: false,
  impulse: false,
  emprise: false,
  mutation: false,
  removal: none,
  activation: none,
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

    // Top row: evolution rank, name and type, threat.
    let side = corner_box + margin
    let name_x = margin + if rank != none { side } else { 0mm }
    let name_width = width - 2 * margin - (if rank != none { side } else { 0mm }) - (if threat != none { side } else { 0mm })
    if rank != none {
      frame(margin, margin, corner_box, 8.5mm, number(("I", "II", "III", "IV").at(rank - 1)))
    }
    frame(name_x, margin, name_width, 8.5mm, align(center + horizon, {
      text(size: 11pt, weight: "bold")[#name]
      v(-2.3mm)
      text(size: 7pt)[#if impulse [Essaim, Impulsion] else if emprise [Essaim, Emprise] else if mutation [Essaim, Mutation] else if token [Essaim, Créature, Jeton] else if structure [Essaim, Créature, Structure] else [Essaim, Créature]]
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
      let cells = zones.enumerate().map(((i, action)) => (zone_block(3 - i), action))
      let start = 0
      let rows = ()
      for count in (if structure or impulse or emprise or mutation { () } else { zones_per_line }) {
        let row = cells.slice(start, start + count)
        start += count
        rows.push(if count == 1 {
          // A zone alone on its line: number on the left, text free to wrap.
          grid(
            columns: (3.9mm, 1fr),
            column-gutter: 1.6mm,
            align: (center + horizon, left + horizon),
            ..row.first()
          )
        } else {
          // Several zones on one line: spread them out, slightly smaller text.
          block(width: 100%, inset: (x: 0.5mm), {
            set text(size: 8.5pt)
            grid(
              columns: (auto,) * count,
              column-gutter: 1fr,
              align: center + horizon,
              ..row.map(cell => grid(columns: 2, column-gutter: 1mm, align: horizon, ..cell))
            )
          })
        })
      }
      if structure and activation != none {
        // One effect for all three zones: the three numbers side by side.
        rows.push(grid(
          columns: (auto, 1fr),
          column-gutter: 1.6mm,
          align: (center + horizon, left + horizon),
          range(3).map(i => zone_block(3 - i)).join(h(0.5mm)), activation,
        ))
      }
      let has_lines = rows.len() > 0
      if has_lines { stack(dir: ttb, spacing: 1.4mm, ..rows) }
      if removal != none { v(3.6mm) }
      let passives = if type(passive) == array { passive } else if passive != none { (passive,) } else { () }
      if passives.len() > 0 {
        if has_lines {
          v(1.2mm, weak: true)
          line(length: 100%, stroke: 0.4pt + luma(130))
          v(1.2mm, weak: true)
        }
        set text(size: 8.5pt)
        stack(dir: ttb, spacing: 2.8mm, ..passives)
      }
    })

    // Removal cost of an Emprise, on the seam between art and text like an asset cost.
    if removal != none {
      let cost = if type(removal) == array {
        removal.map(die).join(h(1.2mm))
      } else {
        box(
          height: 8mm,
          radius: 1.6mm,
          stroke: 0.9pt + black,
          fill: white,
          inset: (x: 2.2mm),
          align(center + horizon, text(size: 11.5pt, weight: "bold")[Total #removal+]),
        )
      }
      place(top + left, dy: 51.25mm - 4mm, box(width: width, align(center, cost)))
    }

    // Bottom row: attack, flavor, health. Cards without stats give the flavor the full width.
    let has_stats = attack != none or health != none
    if has_stats {
      frame(margin, 79.5mm, corner_box, 7mm, number(attack))
      frame(width - margin - corner_box, 79.5mm, corner_box, 7mm, number(health))
    }
    if flavor != none {
      let flavor_x = if has_stats { 2 * margin + corner_box } else { margin }
      frame(flavor_x, 79.5mm, width - 2 * flavor_x, 7mm, inset: (x: 1mm), align(center + horizon, {
        set par(leading: 0.3em)
        text(size: 6.3pt, style: "italic", flavor)
      }))
    }
  })
}

// Zone actions shared by most creatures.
#let advance = [*Avance~1.*]
#let retreat = [*Recule~1.*]
#let attack = [*Attaque.*]
