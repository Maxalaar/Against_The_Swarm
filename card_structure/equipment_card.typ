#import "creat_card.typ": creat_card
#import "fit.typ": fit, size_steps

// Die icon with its condition written inside: "4+", "2−", "6", "X", "X+1"; an empty label means any die.
#let die(label, size: 8mm) = box(
  width: size,
  height: size,
  radius: size * 0.2,
  stroke: 0.9pt + black,
  fill: white,
  align(
    center + horizon,
    text(size: if label.clusters().len() > 2 { 8pt } else { 11.5pt }, weight: "bold")[#label],
  ),
)

// Asset card ("Atout") or starting card.
// - `charge`: room the card takes in the player's set; the corner box is hidden at 0.
// - `dice`: the cost, one label per die, drawn on the seam between art and text.
// Title and rules text shrink automatically when they would not fit.
// - `uses`: maximum uses per turn; shown as one dot per use, only above 1.
#let equipment_card(
  name,
  kind: "Atout, Matériel",
  charge: 0,
  dice: (),
  effect: none,
  uses: 1,
  flavor: none,
) = context {
  let die_size = 8mm
  let gap = 1.2mm
  // Title: one line inside the name box, which is narrower when a Charge box is shown.
  let name_width = if charge > 0 { 49.5mm } else { 60mm }
  let name_size = fit(size => text(size: size, weight: "bold")[#name], size_steps(11pt, 6.5pt), width: name_width - 2mm)

  // Rules text: it must fit between the dice (and dots) above and the flavor below.
  let box_height = 34.5mm
  let above = die_size / 2 + (if uses > 1 { 3.2mm } else { 0mm })
  let below = if flavor != none { 8mm } else { 0mm }
  let rules(size) = block(width: 57mm, {
    set par(leading: 0.35em)
    text(size: size, effect)
  })
  let text_size = fit(rules, size_steps(9.5pt, 6pt), height: box_height - above - below - 3mm)
  // creat_card centres its text in the whole box, shifted down by half a text size;
  // this spacer moves it to the middle of the free space instead.
  let shift = above - below - text_size
  let card = creat_card(
    name,
    cost: if charge > 0 { charge } else { none },
    name_size: name_size,
    type: (kind,),
    capacity: ([#if shift > 0mm { v(shift) } #align(center, effect) #if shift < 0mm { v(-shift) }],),
    capacity_text_size: text_size,
    background_color: rgb("#c5d3e0"),
  )
  let size = measure(card)
  // The seam sits 51.25mm below the top edge of the 88mm card.
  let seam = (size.height - 88mm) / 2 + 51.25mm
  box({
    card
    place(top + left, dy: seam - die_size / 2, box(width: size.width, align(center, dice.map(die).join(h(gap)))))
    // Flavor sits at the bottom of the text box, away from the rules text.
    if flavor != none {
      place(top + left, dx: (size.width - 55mm) / 2, dy: seam + 26.5mm, box(width: 55mm, height: 7mm, align(center + bottom, {
        set par(leading: 0.3em)
        text(size: 7.5pt, style: "italic", fill: rgb("#555555"), flavor)
      })))
    }
    if uses > 1 {
      let dot = box(circle(radius: 0.9mm, fill: black))
      place(top + left, dy: seam + die_size / 2 + 1.1mm, box(width: size.width, align(center, range(uses).map(_ => dot).join(h(1mm)))))
    }
  })
}
