#import "creat_card.typ": creat_card

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
  let card = creat_card(
    name,
    cost: if charge > 0 { charge } else { none },
    type: (kind,),
    // The spacer centres the text in the space left under the dice (and dots).
    capacity: ([#v(if uses > 1 { 4.2mm } else { 0.5mm }) #align(center, effect)],),
    capacity_text_size: 9.5pt,
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
