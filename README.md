# Against The Swarm

Jeu de cartes coopératif : une équipe d'As tient la ligne face à un essaim sans fin. Matériel : des cartes et des d6, rien d'autre.

Le projet est en phase de conception, en français uniquement.

## Contenu

- `cards/` : les données des cartes, source unique pour l'impression et la table de test. Un fichier par ensemble : `swarm.toml` (l'Essaim), `assets.toml` (les atouts), `aces.toml` (les As).
- `rules/` : les règles rapides.
- `print/` : les planches à imprimer (9 cartes par page A4) et, dans `templates/`, les gabarits de carte (63 × 88 mm).
- `table/` : la table de test, une page web pour jouer au doigt sur téléphone ou à la souris.
- `scripts/` : les outils de génération.

## Modifier une carte

Tout se passe dans `cards/`. Les champs de texte acceptent le balisage Typst (`*gras*`, `~` pour une espace insécable).

## Générer les PDF

Avec [Typst](https://typst.app) installé, depuis la racine du projet :

```
typst compile --root . rules/against_the_swarm_quick_rule_fr.typ
typst compile --root . print/swarm_cards.typ
typst compile --root . print/ace_cards.typ
typst compile --root . print/panoply_cards.typ
```

## Générer une seule carte

```
typst compile --root . print/single_card.typ build/bombard.png --input set=swarm --input id=bombard
```

`set` vaut `swarm`, `asset` ou `ace` ; `id` est le nom de la table dans le fichier de données.

## Lancer la table de test

La table lit les images des cartes, à régénérer après chaque changement dans `cards/` (Python avec Pillow) :

```
python3 scripts/export_table_cards.py
python3 -m http.server --directory table
```

Puis ouvrir `http://localhost:8000`. La table ne connaît pas les règles : elle déplace les cartes, tire l'invasion, lance les dés et tient les compteurs.
