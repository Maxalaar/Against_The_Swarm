#import "fit.typ": fit, size_steps

// Ace card ("As"), 63 x 88 mm: the character a player plays.
// - `hp`, `ap`, `slots`: PV, PA and Emplacements, in three labelled boxes at the bottom.
// - `passive`: the ability that defines the character's build.
#let ace_card(
  name,
  hp: 5,
  ap: 5,
  slots: 5,
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
    frame(margin, margin, width - 2 * margin, 8.5mm, align(center + horizon, context {
      let title(size) = text(size: size, weight: "bold")[#name]
      title(fit(title, size_steps(11pt, 6.5pt), width: width - 2 * margin - 2mm))
      v(-2.3mm)
      text(size: 7pt)[As]
    }))
    frame(
      margin, 11.5mm, width - 2 * margin, 39mm,
      align(center + horizon, text(size: 14pt, fill: rgb("#999999"))[ART]),
      fill: rgb("#e6e6fa"),
    )
    frame(margin, 52mm, width - 2 * margin, 24.5mm, inset: (x: 2mm, y: 1.6mm), context {
      set par(leading: 0.4em)
      // Passive and flavor shrink together until they fit.
      let body(f) = {
        text(size: 9.5pt * f, passive)
        if flavor != none {
          v(1.6mm, weak: true)
          text(size: 7.5pt * f, style: "italic", fill: rgb("#555555"), flavor)
        }
      }
      let factors = (1, 0.95, 0.9, 0.85, 0.8, 0.75, 0.7, 0.65, 0.6)
      let f = fit(f => block(width: width - 2 * margin - 4mm, body(f)), factors, height: 24.5mm - 3.2mm)
      align(center + horizon, body(f))
    })
    // Bottom row: three equal stat boxes.
    let w = (width - 4 * margin) / 3
    frame(margin, 78mm, w, 8.5mm, stat("PV", hp))
    frame(2 * margin + w, 78mm, w, 8.5mm, stat("PA", ap))
    frame(3 * margin + 2 * w, 78mm, w, 8.5mm, stat("Emplacements", slots))
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
