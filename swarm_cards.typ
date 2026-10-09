#import "paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

// Evolution rank I: the starting pile
#import "card_content/swarm/swarmer.typ": swarmer
#import "card_content/swarm/ram.typ": ram
#import "card_content/swarm/martyr.typ": martyr
#import "card_content/swarm/bombard.typ": bombard
#import "card_content/swarm/protector.typ": protector
#import "card_content/swarm/leaper.typ": leaper
#import "card_content/swarm/burrower.typ": burrower
#import "card_content/swarm/carrier.typ": carrier
#import "card_content/swarm/brooder.typ": brooder
#import "card_content/swarm/pod.typ": pod
#import "card_content/swarm/jammer.typ": jammer

// Evolution ranks II and above, added to the pile as waves go by
#import "card_content/swarm/colossus.typ": colossus
#import "card_content/swarm/ironclad.typ": ironclad
#import "card_content/swarm/alpha.typ": alpha
#import "card_content/swarm/matriarch.typ": matriarch
#import "card_content/swarm/hydra.typ": hydra
#import "card_content/swarm/beater.typ": beater
#import "card_content/swarm/scavenger.typ": scavenger
#import "card_content/swarm/herald.typ": herald
#import "card_content/swarm/mimic.typ": mimic
#import "card_content/swarm/bodyguard.typ": bodyguard
#import "card_content/swarm/saboteur.typ": saboteur
#import "card_content/swarm/titan.typ": titan
#import "card_content/swarm/queen.typ": queen

// Structures: creatures that never move
#import "card_content/swarm/nest.typ": nest
#import "card_content/swarm/psychic_relay.typ": psychic_relay
#import "card_content/swarm/bait.typ": bait
#import "card_content/swarm/rampart.typ": rampart
#import "card_content/swarm/artillery.typ": artillery
#import "card_content/swarm/rage_gland.typ": rage_gland
#import "card_content/swarm/hive.typ": hive

// Impulses: one-shot effects, resolved then discarded
#import "card_content/swarm/swarm_cloud.typ": swarm_cloud
#import "card_content/swarm/rush.typ": rush
#import "card_content/swarm/jolt.typ": jolt
#import "card_content/swarm/psychic_attack.typ": psychic_attack
#import "card_content/swarm/rampage.typ": rampage
#import "card_content/swarm/tide.typ": tide

// Emprises: lasting effects on a sector, removed by paying dice
#import "card_content/swarm/toxin.typ": toxin
#import "card_content/swarm/tunnel.typ": tunnel
#import "card_content/swarm/crushing_presence.typ": crushing_presence
#import "card_content/swarm/mucus.typ": mucus
#import "card_content/swarm/fog.typ": fog
#import "card_content/swarm/infested_ground.typ": infested_ground
#import "card_content/swarm/eclipse.typ": eclipse
#import "card_content/swarm/isolation.typ": isolation
#import "card_content/swarm/hunger.typ": hunger
#import "card_content/swarm/corrosion.typ": corrosion
#import "card_content/swarm/parasite.typ": parasite

// Mutations: cards attached to a creature
#import "card_content/swarm/carapace.typ": carapace
#import "card_content/swarm/hypertrophy.typ": hypertrophy
#import "card_content/swarm/claws.typ": claws
#import "card_content/swarm/second_skin.typ": second_skin
#import "card_content/swarm/egg_sac.typ": egg_sac
#import "card_content/swarm/acid_blood.typ": acid_blood
#import "card_content/swarm/offspring.typ": offspring
#import "card_content/swarm/camouflage.typ": camouflage
#import "card_content/swarm/frenzy.typ": frenzy
#import "card_content/swarm/apex.typ": apex
#import "card_content/swarm/pack_instinct.typ": pack_instinct
#import "card_content/swarm/leader.typ": leader

// Tokens, never shuffled into the pile
#import "card_content/swarm/broodling.typ": broodling
#import "card_content/swarm/spitter.typ": spitter
#import "card_content/swarm/warrior.typ": warrior
#import "card_content/swarm/bubo.typ": bubo
#import "card_content/swarm/copy.typ": copy

// Infestation: one per player, sets the number of invasion draws
#import "card_content/swarm/infestation.typ": infestation

#let all-cards = (
  swarmer,
  ram,
  martyr,
  bombard,
  protector,
  leaper,
  burrower,
  carrier,
  brooder,
  pod,
  jammer,
  colossus,
  ironclad,
  alpha,
  matriarch,
  hydra,
  beater,
  scavenger,
  herald,
  mimic,
  bodyguard,
  saboteur,
  titan,
  queen,
  nest,
  psychic_relay,
  bait,
  rampart,
  artillery,
  rage_gland,
  hive,
  swarm_cloud,
  rush,
  jolt,
  psychic_attack,
  rampage,
  tide,
  toxin,
  tunnel,
  crushing_presence,
  mucus,
  fog,
  infested_ground,
  eclipse,
  isolation,
  hunger,
  corrosion,
  parasite,
  carapace,
  hypertrophy,
  claws,
  second_skin,
  egg_sac,
  acid_blood,
  offspring,
  camouflage,
  frenzy,
  apex,
  pack_instinct,
  leader,
  broodling,
  spitter,
  warrior,
  bubo,
  copy,
  infestation,
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)
