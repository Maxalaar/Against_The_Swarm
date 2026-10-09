# Against The Swarm

Jeu de cartes coopératif : une équipe d'As tient la ligne face à un essaim sans fin. Matériel : des cartes et des d6, rien d'autre.

Le projet est en phase de conception, en français uniquement.

## Contenu

- `against_the_swarm_quick_rule_fr.typ` : les règles rapides.
- `card_content/` : une carte par fichier, rangées dans `swarm/`, `base/` et `equipment/`.
- `card_structure/` : les gabarits de carte (63 × 88 mm) : Essaim, atout et As.
- `swarm_cards.typ`, `ace_cards.typ` et `panoply_cards.typ` : les planches de cartes à imprimer (9 par page A4), pour l'Essaim, les As et la Panoplie (les atouts).

## Générer une seule carte

```
./render_card.sh card_content/swarm/bombard.typ
```

L'image est écrite dans `build/`.

## Générer les PDF

Avec [Typst](https://typst.app) installé :

```
typst compile against_the_swarm_quick_rule_fr.typ
typst compile swarm_cards.typ
typst compile ace_cards.typ
typst compile panoply_cards.typ
```
