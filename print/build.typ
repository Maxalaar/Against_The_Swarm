// Builds cards from the data files in cards/.
// Text fields in the data are Typst markup, evaluated here.
#import "templates/swarm_card.typ": swarm_card
#import "templates/asset_card.typ": asset_card
#import "templates/ace_card.typ": ace_card, tracking_card

#let swarm_data = toml("../cards/swarm.toml")
#let asset_data = toml("../cards/assets.toml")
#let ace_data = toml("../cards/aces.toml")

#let markup(source) = if source == none { none } else { eval(source, mode: "markup") }

#let swarm(id) = {
  let c = swarm_data.at(id)
  let kind = c.kind
  let removal = c.at("removal_dice", default: c.at("removal_total", default: none))
  swarm_card(
    c.name,
    rank: c.at("rank", default: none),
    threat: c.at("threat", default: none),
    token: kind == "token",
    structure: kind == "structure",
    impulse: kind == "impulse",
    emprise: kind == "emprise",
    mutation: kind == "mutation",
    type_line: markup(c.at("type_line", default: none)),
    zones: c.at("zones", default: ()).map(markup),
    activation: markup(c.at("activation", default: none)),
    removal: removal,
    passive: c.at("passive", default: ()).map(markup),
    flavor: markup(c.at("flavor", default: none)),
    attack: c.at("attack", default: none),
    endurance: c.at("endurance", default: none),
  )
}

#let asset(id) = {
  let c = asset_data.at(id)
  asset_card(
    c.name,
    kind: c.type,
    slots: c.at("slots", default: 0),
    dice: c.at("dice", default: ()),
    effect: markup(c.effect),
    uses: c.at("uses", default: 1),
    flavor: markup(c.at("flavor", default: none)),
  )
}

#let ace(id) = {
  let c = ace_data.at(id)
  ace_card(
    c.name,
    hp: c.hp,
    ap: c.ap,
    slots: c.slots,
    passive: markup(c.passive),
    flavor: markup(c.at("flavor", default: none)),
  )
}

// Every card of a set, in the order of its data file.
#let all_swarm() = swarm_data.keys().map(swarm)
#let all_assets() = asset_data.keys().map(asset)
#let all_aces() = ace_data.keys().map(ace) + (tracking_card(),)
