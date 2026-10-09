// Ace card ("As"), 63 x 88 mm: the character a player plays.
// - `hp`, `ap`, `charge`: PV, PA and Charge max, in three labelled boxes at the bottom.
// - `passive`: the ability that defines the character's build.
#let ace_card(
  name,
  hp: 5,
  ap: 5,
  charge: 5,
  passive: none,
  flavor: none,
) = {
  let width = 63mm
  let height = 88mm
  let margin = 1.5mm
  let frame(x, y, w, h, body, fill: white, inset: 0mm) = place(top + left, dx: x, dy: y, box(
    width: w,
    height: h,
    radius: 1mm,
    stroke: 0.5mm + black,
    fill: fill,
    inset: inset,
    body,
  ))
  let stat(label, value) = align(center + horizon, {
    text(size: 12pt, weight: "bold")[#value]
    v(-2.6mm)
    text(size: 5.5pt)[#label]
  })

  box(width: width, height: height, {
    place(top + left, rect(width: width, height: height, radius: 2.5mm, fill: rgb("#e3d6b8"), stroke: 1mm + black))
    frame(margin, margin, width - 2 * margin, 8.5mm, align(center + horizon, {
      text(size: 11pt, weight: "bold")[#name]
      v(-2.3mm)
      text(size: 7pt)[As]
    }))
    frame(
      margin, 11.5mm, width - 2 * margin, 39mm,
      align(center + horizon, text(size: 14pt, fill: rgb("#999999"))[ART]),
      fill: rgb("#e6e6fa"),
    )
    frame(margin, 52mm, width - 2 * margin, 24.5mm, inset: (x: 2mm, y: 1.6mm), {
      set par(leading: 0.4em)
      align(center + horizon, {
        text(size: 9.5pt, passive)
        if flavor != none {
          v(1.6mm, weak: true)
          text(size: 7.5pt, style: "italic", fill: rgb("#555555"), flavor)
        }
      })
    })
    // Bottom row: three equal stat boxes.
    let w = (width - 4 * margin) / 3
    frame(margin, 78mm, w, 8.5mm, stat("PV", hp))
    frame(2 * margin + w, 78mm, w, 8.5mm, stat("PA", ap))
    frame(3 * margin + 2 * w, 78mm, w, 8.5mm, stat("Charge max", charge))
  })
}

// Tracking card: two areas where a player keeps dice for Wounds and Guard.
#let tracking_card() = {
  let width = 63mm
  let height = 88mm
  let margin = 1.5mm
  let area(y, h, label, note) = place(top + left, dx: margin, dy: y, box(
    width: width - 2 * margin,
    height: h,
    radius: 1mm,
    stroke: 0.5mm + black,
    fill: white,
    inset: 2mm,
    align(center + top, {
      text(size: 11pt, weight: "bold")[#label]
      v(-2mm)
      text(size: 7pt, note)
    }),
  ))
  box(width: width, height: height, {
    place(top + left, rect(width: width, height: height, radius: 2.5mm, fill: rgb("#e3d6b8"), stroke: 1mm + black))
    area(margin, 42mm, [Blessures], [Posez ici les dés qui comptent vos Blessures. Quand elles atteignent vos PV, vous êtes hors jeu.])
    area(45mm, 41.5mm, [Garde], [Posez ici les dés qui comptent votre Garde. Elle absorbe les dégâts et revient à zéro au début de votre tour.])
  })
}
