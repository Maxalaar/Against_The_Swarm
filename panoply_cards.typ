#import "paginated_card_grid.typ": paginated_card_grid

#set page(
  paper: "a4",
  margin: 0.5cm,
)

// Starting cards
#import "card_content/base/pistol.typ": pistol
#import "card_content/base/rifle_butt.typ": rifle_butt
#import "card_content/base/move.typ": move
#import "card_content/base/revive.typ": revive

// Equipment
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
#import "card_content/equipment/blunderbuss.typ": blunderbuss
#import "card_content/equipment/sword.typ": sword
#import "card_content/equipment/hammer.typ": hammer
#import "card_content/equipment/machine_gun.typ": machine_gun
#import "card_content/equipment/rocket_launcher.typ": rocket_launcher
#import "card_content/equipment/grapple.typ": grapple
#import "card_content/equipment/repulsor.typ": repulsor
#import "card_content/equipment/freezer.typ": freezer
#import "card_content/equipment/scalpel.typ": scalpel
#import "card_content/equipment/detector.typ": detector
#import "card_content/equipment/armor.typ": armor
#import "card_content/equipment/dodge.typ": dodge
#import "card_content/equipment/loaded_die.typ": loaded_die
#import "card_content/equipment/covering_fire.typ": covering_fire
#import "card_content/equipment/laser.typ": laser
#import "card_content/equipment/calibrator.typ": calibrator
#import "card_content/equipment/arc.typ": arc
#import "card_content/equipment/harpoon.typ": harpoon
#import "card_content/equipment/scythe.typ": scythe
#import "card_content/equipment/assault_rifle.typ": assault_rifle
#import "card_content/equipment/cleaver.typ": cleaver
#import "card_content/equipment/scope.typ": scope
#import "card_content/equipment/magazine.typ": magazine
#import "card_content/equipment/composure.typ": composure
#import "card_content/equipment/taunt.typ": taunt
#import "card_content/equipment/riposte.typ": riposte
#import "card_content/equipment/second_wind.typ": second_wind
#import "card_content/equipment/vibro_blade.typ": vibro_blade
#import "card_content/equipment/bandolier.typ": bandolier
#import "card_content/equipment/frag_charge.typ": frag_charge
#import "card_content/equipment/capacitor.typ": capacitor
#import "card_content/equipment/discipline.typ": discipline
#import "card_content/equipment/heavy_hand.typ": heavy_hand
#import "card_content/equipment/cheater.typ": cheater
#import "card_content/equipment/fistful.typ": fistful
#import "card_content/equipment/amplifier.typ": amplifier
#import "card_content/equipment/mine.typ": mine
#import "card_content/equipment/guided_missile.typ": guided_missile
#import "card_content/equipment/demolition_charge.typ": demolition_charge
#import "card_content/equipment/time_bomb.typ": time_bomb
#import "card_content/equipment/orbital_bombardment.typ": orbital_bombardment
#import "card_content/equipment/tactical_nuke.typ": tactical_nuke
#import "card_content/equipment/glue_trap.typ": glue_trap
#import "card_content/equipment/stun_grenade.typ": stun_grenade
#import "card_content/equipment/acid_grenade.typ": acid_grenade

#let all-cards = (
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
  blunderbuss,
  sword,
  hammer,
  machine_gun,
  rocket_launcher,
  grapple,
  repulsor,
  freezer,
  scalpel,
  detector,
  armor,
  dodge,
  loaded_die,
  covering_fire,
  laser,
  calibrator,
  arc,
  harpoon,
  scythe,
  assault_rifle,
  cleaver,
  scope,
  magazine,
  composure,
  taunt,
  riposte,
  second_wind,
  vibro_blade,
  bandolier,
  frag_charge,
  capacitor,
  discipline,
  heavy_hand,
  cheater,
  fistful,
  amplifier,
  mine,
  guided_missile,
  demolition_charge,
  time_bomb,
  orbital_bombardment,
  tactical_nuke,
  glue_trap,
  stun_grenade,
  acid_grenade,
)

#paginated_card_grid(all-cards, cards-per-page: 9, columns: 3)
