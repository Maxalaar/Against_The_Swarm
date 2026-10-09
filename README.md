# Against The Swarm

Jeu de cartes coopératif : une équipe de Slayers tient la ligne face à un essaim sans fin. Matériel : des cartes et des d6, rien d'autre.

Le projet est en phase de conception, en français uniquement.

## Contenu

- `against_the_swarm_quick_rule_fr.typ` : les règles rapides.
- `card_content/` : une carte par fichier, rangées dans `swarm/`, `base/` et `equipment/`.
- `card_structure/` : le gabarit de carte (63 × 88 mm) et ses deux variantes, Essaim et équipement.
- `swarm_cards.typ`, `slayer_cards.typ`, `equipment_cards.typ` : les planches de cartes à imprimer (9 par page A4), une par type.

## Générer les PDF

Avec [Typst](https://typst.app) installé :

```
typst compile against_the_swarm_quick_rule_fr.typ
typst compile swarm_cards.typ
typst compile slayer_cards.typ
typst compile equipment_cards.typ
```
