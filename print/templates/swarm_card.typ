#import "asset_card.typ": die
#import "fit.typ": fit, size_steps

// Swarm card, 63 x 88 mm.
// - `rank`: evolution rank, 1 to 4, shown as a Roman numeral left of the name; none hides it.
// - `threat`: Menace value, top right; tokens have none.
// - `zones`: what the engeance does when it activates in zone 3, zone 2, zone 1.
//   Neighbouring zones with the same effect are merged under grouped numbers, and the
//   groups share one line when they fit, otherwise each group gets its own line.
// - `structure`: true marks a Structure, a creature that never moves. It takes
//   `activation` instead of `zones`: one effect, applied whatever its zone.
// - `impulse`: true marks an Impulsion, a one-shot effect that resolves and is discarded.
//   It has no zones, attack or health; its text goes in `passive`.
// - `mutation`: true marks a Mutation, a card attached to a creature. No zones or stats;
//   `passive` holds which creature it mutates, then what it grants.
// - `emprise`: true marks an Emprise, a lasting effect on a sector with no zone or stats.
//   Players remove it by paying `removal`: either dice labels, as on asset cards,
//   or a number, the total to reach with any dice.
// - `type_line`: replaces the type line under the name, for one-off cards.
// - `passive`: optional always-on text, printed under the zone lines. Pass an array
//   to give several abilities; each gets its own paragraph.
// - `attack` / `endurance`: bottom-left and bottom-right boxes.
#let swarm_card(
  name,
  rank: none,
  threat: none,
  token: false,
  zones: (),
  structure: false,
  impulse: false,
  emprise: false,
  mutation: false,
  type_line: none,
  removal: none,
  activation: none,
  passive: none,
  flavor: none,
  attack: none,
  endurance: none,
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
    frame(name_x, margin, name_width, 8.5mm, align(center + horizon, context {
      // The title shrinks until it fits on one line.
      let title(size) = text(size: size, weight: "bold")[#name]
      title(fit(title, size_steps(11pt, 6.5pt), width: name_width - 2mm))
      v(-2.3mm)
      text(size: 7pt)[#if type_line != none [#type_line] else if impulse [Essaim, Impulsion] else if emprise [Essaim, Emprise] else if mutation [Essaim, Mutation] else if token [Essaim, Engeance, Jeton] else if structure [Essaim, Engeance, Structure] else [Essaim, Engeance]]
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
    frame(margin, 52mm, width - 2 * margin, 26mm, inset: (x: 2mm, y: 1.4mm), context {
      // `build(f)` lays out the whole text box with every text size scaled by `f`,
      // so the content can shrink as one block until it fits.
      let build(f) = {
      set text(size: 9pt * f)
      set par(leading: 0.4em)
      // Structures apply one effect in every zone; other kinds of card have no zones.
      let effects = if structure and activation != none {
        (activation,) * 3
      } else if impulse or emprise or mutation {
        ()
      } else {
        zones
      }
      // Merge neighbouring zones that share an effect: ((3, 2), effect), ((1,), effect).
      let groups = ()
      for (i, effect) in effects.enumerate() {
        if groups.len() > 0 and groups.last().at(1) == effect {
          let last = groups.pop()
          groups.push((last.at(0) + (3 - i,), effect))
        } else {
          groups.push(((3 - i,), effect))
        }
      }
      let numbers(group) = group.at(0).map(zone_block).join(h(0.5mm))
      let compact(group) = {
        set text(size: 8.5pt * f)
        grid(columns: 2, column-gutter: 1mm, align: horizon, numbers(group), group.at(1))
      }
      let full_line(group) = grid(
        columns: (auto, 1fr),
        column-gutter: 1.6mm,
        align: (center + horizon, left + horizon),
        numbers(group), group.at(1),
      )
      // Pack the groups into lines: short ones share a line, a long one takes its own.
      let limit = 55mm
      let gap = 1.5mm
      let lines = ()
      let current = ()
      let used = 0mm
      for group in groups {
        let w = measure(compact(group)).width
        if current.len() > 0 and used + gap + w > limit {
          lines.push(current)
          current = ()
          used = 0mm
        }
        used += if current.len() > 0 { gap + w } else { w }
        current.push(group)
      }
      if current.len() > 0 { lines.push(current) }
      let rows = lines.map(line => if line.len() == 1 {
        full_line(line.first())
      } else {
        block(width: 100%, inset: (x: 0.5mm), grid(
          columns: (auto,) * line.len(),
          column-gutter: 1fr,
          align: center + horizon,
          ..line.map(compact)
        ))
      })
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
        set text(size: 8.5pt * f)
        stack(dir: ttb, spacing: 2.8mm * f, ..passives)
      }
      }
      let inner_width = width - 2 * margin - 4mm
      let factors = (1, 0.95, 0.9, 0.85, 0.8, 0.75, 0.7, 0.65, 0.6)
      build(fit(f => block(width: inner_width, build(f)), factors, height: 26mm - 2.8mm))
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
    let has_stats = attack != none or endurance != none
    if has_stats {
      frame(margin, 79.5mm, corner_box, 7mm, number(attack))
      frame(width - margin - corner_box, 79.5mm, corner_box, 7mm, number(endurance))
    }
    if flavor != none {
      let flavor_x = if has_stats { 2 * margin + corner_box } else { margin }
      let flavor_width = width - 2 * flavor_x
      frame(flavor_x, 79.5mm, flavor_width, 7mm, inset: (x: 1mm), align(center + horizon, context {
        set par(leading: 0.3em)
        let line(size) = text(size: size, style: "italic", flavor)
        line(fit(size => block(width: flavor_width - 2mm, line(size)), size_steps(6.5pt, 4.5pt), height: 6mm))
      }))
    }
  })
}

// Zone actions shared by most creatures.
#let advance = [*Avance~1.*]
#let retreat = [*Recule~1.*]
#let attack = [*Attaque.*]
