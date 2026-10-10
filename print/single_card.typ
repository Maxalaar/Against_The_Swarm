// Renders one card on a page of its own size.
// Usage: typst compile --root . print/single_card.typ out.png --input set=swarm --input id=bombard
// set is one of: swarm, asset, ace
#import "build.typ": swarm, asset, ace
#let builders = (swarm: swarm, asset: asset, ace: ace)
#set page(width: auto, height: auto, margin: 1mm)
#(builders.at(sys.inputs.at("set")))(sys.inputs.at("id"))
