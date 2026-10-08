#import "paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

// Essaim (les trois derniers sont des jetons, jamais dans la pile)
#import "card_content/swarm/swarmer.typ": swarmer
#import "card_content/swarm/ram.typ": ram
#import "card_content/swarm/martyr.typ": martyr
#import "card_content/swarm/bombard.typ": bombard
#import "card_content/swarm/protector.typ": protector
#import "card_content/swarm/broodling.typ": broodling
#import "card_content/swarm/spitter.typ": spitter
#import "card_content/swarm/warrior.typ": warrior

// Cartes de base et arme de départ
#import "card_content/base/pistol.typ": pistol
#import "card_content/base/rifle_butt.typ": rifle_butt
#import "card_content/base/move.typ": move
#import "card_content/base/revive.typ": revive

// Équipements
#import "card_content/equipment/shotgun.typ": shotgun
#import "card_content/equipment/sniper_rifle.typ": sniper_rifle
#import "card_content/equipment/flamethrower.typ": flamethrower
#import "card_content/equipment/grenade.typ": grenade
#import "card_content/equipment/stimulant.typ": stimulant
#import "card_content/equipment/targeting_computer.typ": targeting_computer
#import "card_content/equipment/shield.typ": shield
#import "card_content/equipment/medkit.typ": medkit
#import "card_content/equipment/decoy.typ": decoy
#import "card_content/equipment/radio.typ": radio

#let all-cards = (
  swarmer,
  ram,
  martyr,
  bombard,
  protector,
  broodling,
  spitter,
  warrior,
  pistol,
  rifle_butt,
  move,
  revive,
  shotgun,
  sniper_rifle,
  flamethrower,
  grenade,
  stimulant,
  targeting_computer,
  shield,
  medkit,
  decoy,
  radio,
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)
