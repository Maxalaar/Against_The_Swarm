// Renders one card on a page of its own size.
// Usage: typst compile single_card.typ out.png --input card=card_content/swarm/bombard.typ
// The card file must define a variable named after the file (bombard.typ -> bombard).
#let path = sys.inputs.at("card")
#let name = path.split("/").last().replace(".typ", "")
#import path as card_module
#set page(width: auto, height: auto, margin: 1mm)
#dictionary(card_module).at(name)
