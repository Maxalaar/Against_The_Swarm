// Renders every card of one set, one card per page, in alphabetical order of identifier.
// Usage: typst compile --root . print/card_pages.typ "out/{0p}.png" --input set=swarm
// set is one of: swarm, asset, ace
#import "build.typ": swarm, asset, ace, swarm_data, asset_data, ace_data
#let sets = (swarm: (swarm, swarm_data), asset: (asset, asset_data), ace: (ace, ace_data))
#let (builder, data) = sets.at(sys.inputs.at("set"))
#set page(width: auto, height: auto, margin: 0mm)
#for id in data.keys().sorted() {
  builder(id)
  pagebreak(weak: true)
}
