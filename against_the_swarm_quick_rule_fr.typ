#set document(
  title: "Against The Swarm — Règles rapides",
  author: "Against The Swarm",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
)

#set text(
  font: ("Linux Libertine", "Libertinus Serif"),
  size: 10.5pt,
  lang: "fr",
)

#set heading(numbering: "1.")

#show heading.where(level: 1): it => [
  #v(0.8em)
  #block(
    fill: luma(220),
    inset: (x: 8pt, y: 5pt),
    radius: 3pt,
    width: 100%,
    text(weight: "bold", size: 12pt, it)
  )
  #v(0.3em)
]

#show heading.where(level: 2): it => [
  #v(0.5em)
  #text(weight: "bold", size: 11pt, style: "italic", it)
  #v(0.2em)
]

#show heading.where(level: 3): it => [
  #v(0.4em)
  #text(weight: "bold", size: 10.5pt, it)
  #v(0.1em)
]

// Title block
#align(center)[
  #v(0.5em)
  #text(size: 24pt, weight: "bold")[Against The Swarm]
  #v(0.5em)
  #line(length: 80%, stroke: 1.5pt)
  #v(0.5em)
  #block(
    width: 85%,
    fill: luma(245),
    inset: 12pt,
    radius: 4pt,
    [
      #text(style: "italic")[
        Quelque part dans les confins de la galaxie, une équipe de combattants d'élite affronte une menace sans fin. L'essaim ne peut pas être vaincu, seulement repoussé. Combien de temps tiendrez-vous ?
      ]
    ]
  )
  #v(0.5em)
  #line(length: 80%, stroke: 1.5pt)
  #v(1em)
]

// --- Mise en place ---

= Mise en place

Le jeu utilise deux piles, chacune avec sa propre défausse :
- *Pile d'équipement* : source des cartes proposées lors du draft.
- *Pile Essaim* : source des renforts lors de la phase d'invasion.

Quand une pile est vide, on mélange sa défausse pour former une nouvelle pile.

Les cartes *Jeton* ne sont jamais mélangées dans la pile Essaim : elles sont gardées à part et n'entrent en jeu que lorsqu'une autre carte les crée. Un jeton détruit retourne dans la réserve de jetons.

*Avant la première vague :*

+ Mélanger séparément la pile d'équipement et la pile Essaim.
+ Les joueurs se disposent en boucle autour de la table.
+ Chaque joueur prend sa *carte de personnage* et place devant lui ses trois *cartes de base* : Coup de crosse, Déplacement, Réanimation.
+ Chaque joueur reçoit une carte *Pistolet* qui constitue son arsenal de départ.
+ Chaque joueur effectue deux fois le draft de départ : tirer 3 cartes de la pile d'équipement, en choisir 1 (ou aucune), défausser les cartes non choisies.
+ Chaque joueur place une *carte Infestation* dans son secteur.

// --- Caractéristiques ---

= Caractéristiques des joueurs

Les caractéristiques de chaque joueur sont indiquées sur sa *carte de personnage* :

*PV — Points de Vie Max* (base 5) \
Nombre de points de vie maximum. Au début de chaque vague, le joueur commence avec ses PV au maximum. Les PV peuvent varier au cours d'une vague mais ne peuvent jamais dépasser la valeur max. À 0 PV, le joueur est mis hors jeu pour la vague en cours.

*PA — Points d'Action* (base 5) \
Nombre de d6 lancés par le joueur à chaque tour. C'est avec ces dés que les joueurs activent leurs équipements.

*PS — Points de Stockage* (base 5) \
Limite le nombre d'équipements que le joueur peut porter. La somme des valeurs de Stockage de son arsenal ne peut pas dépasser sa valeur de PS.

// --- Arsenal ---

= L'Arsenal

L'ensemble des équipements qu'un joueur porte s'appelle son *arsenal*.

Chaque équipement possède :
- Un *Stockage* : nombre de PS que l'équipement occupe dans l'arsenal.
- Une ou plusieurs *capacités*, chacune se caractérisant par :
  - Un *coût* : un ou plusieurs d6 avec des résultats spécifiques à obtenir. « Un dé 4+ » demande un dé affichant 4 ou plus ; « une paire » demande deux dés de même valeur.
  - Un *effet* : déclenché quand le joueur paie le coût.
  - Un *nombre d'utilisations max par tour* (1 par défaut, indiqué sur la carte si différent).

Quand un effet indique « N créatures maximum », le joueur choisit lui-même les créatures touchées, sans jamais dépasser ce nombre.

Quand un joueur active un équipement, il retire immédiatement les dés utilisés de sa réserve d'activation. Une fois qu'une capacité a été utilisée (une ou plusieurs fois), la carte est pivotée à 90° et ne peut plus être activée jusqu'au début du prochain tour. Si une capacité possède plusieurs utilisations, toutes ses activations doivent être effectuées consécutivement — on ne peut pas intercaler les capacités d'autres équipements entre elles. Chaque activation peut cependant cibler une cible différente.

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Exemple — Pistolet* #h(1fr) _(donnée à tous les joueurs en début de partie)_

  #text(size: 9.5pt)[
    Type : Arme — Stockage : 1 \
    Coût : un dé affichant 4+ \
    Effet : Dégât 2 à une cible à portée 2. 3 utilisations par tour.
  ]
]

=== Cartes de base _(Stockage 0, données à tous les joueurs)_

#table(
  columns: (auto, auto, 1fr),
  align: (left, left, left),
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Nom*], [*Coût*], [*Effet*],
  [Coup de crosse],
  [N'importe quel résultat],
  [Dégât 1 à une cible à portée 1.],

  [Déplacement],
  [Un dé affichant 4+],
  [Déplacer 1.],

  [Réanimation],
  [Deux dés affichant 6, 6],
  [Fait revivre un joueur adjacent à 1 PV. Ce joueur réduit ses PA de 2 pour le reste de la vague (minimum 1 PA).],
)

// --- Champ de bataille ---

= Champ de bataille

Les joueurs sont disposés en *boucle* : chaque joueur est adjacent à exactement deux autres, quel que soit le nombre de joueurs. À deux joueurs, le voisin de gauche et de droite est le même.

Chaque joueur possède un *secteur* divisé en 3 zones :
- Zone 1 — Contact
- Zone 2 — Proche
- Zone 3 — Éloignée

=== Portée

Un joueur peut cibler un permanent dans un secteur adjacent, mais la portée effective est réduite de 1 par secteur de distance.

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Exemple :* un équipement à portée 2 peut atteindre un permanent en zone 1 du secteur voisin (2 − 1 = 1 ✓). Il ne peut pas atteindre la zone 2 du même secteur voisin (portée insuffisante).
]

// --- Dégâts et salves ---

= Dégâts et salves

On ne note jamais les blessures des créatures de l'Essaim. Une créature est soit intacte, soit détruite.

*Seuil* : une créature est détruite si elle subit, en une seule fois, des dégâts supérieurs ou égaux à ses PV. Sinon, les dégâts sont perdus et la créature reste intacte.

*Salve* : pour additionner des dégâts, un ou plusieurs joueurs déclarent une salve. Ils annoncent ensemble toutes les activations qui en font partie, paient leurs coûts, puis les résolvent en une seule fois. Chaque créature additionne les dégâts de toutes les activations de la salve qui la touchent, puis compare ce total à ses PV.

- Une salve peut mêler plusieurs équipements et plusieurs joueurs, tant que chaque activation respecte sa portée.
- Les dés et les utilisations dépensés dans une salve sont perdus, même si elle ne détruit rien.
- Une fois la salve résolue, il ne reste aucune trace des dégâts : une nouvelle salve repart de zéro.
- Quand un effet réduit les dégâts, la réduction s'applique à chaque activation séparément, avant l'addition. Une activation réduite à 0 n'apporte rien à la salve.

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Exemple 1 :* un Guerrier a 3 PV. Un seul tir de Pistolet (2 dégâts) ne lui fait rien. Deux tirs déclarés en salve infligent 4 dégâts : il est détruit.

  *Exemple 2 :* une zone contient quatre créatures à 2 PV. Une salve combine une arme infligeant 1 dégât aux quatre créatures et une autre infligeant 1 dégât à trois d'entre elles. Trois créatures subissent 2 dégâts et sont détruites ; la quatrième n'en subit qu'un et reste intacte.
]

Les PV des joueurs, eux, sont suivis normalement : les dégâts qu'ils subissent se cumulent jusqu'à la fin de la vague.

// --- Structure d'une partie ---

= Structure d'une partie

#block(
  fill: luma(245),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  #set text(font: ("Courier New", "DejaVu Sans Mono"), size: 9.5pt)
  ```
  PARTIE
   └── VAGUE
        └── ROUND
             ├── Tour des joueurs
             └── Tour de l'Essaim
   └── PRÉPARATION (entre chaque vague)
  ```
]

=== Durée et progression des vagues

Le niveau de menace commence à 6 et augmente de 1 tous les 2 vagues à partir de la vague 2. \
Le nombre de rounds à tenir commence à 5 et augmente de 1 tous les 2 vagues à partir de la vague 3.

#table(
  columns: (1fr, 1fr, 1fr),
  align: center,
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Vague*], [*Rounds à tenir*], [*Niveau de menace*],
  [1], [5], [6],
  [2], [5], [7],
  [3], [6], [7],
  [4], [6], [8],
  [5], [7], [8],
  [6], [7], [9],
  [7], [8], [9],
  [8], [8], [10],
)

// --- Tour des joueurs ---

= Tour des joueurs

Tous les joueurs jouent *simultanément*. La communication est libre.

+ Toutes les cartes d'équipement et de base pivotées sont remises à l'endroit (réinitialisation des utilisations).
+ Chaque joueur lance un nombre de dés égal à ses PA. Ces dés constituent sa réserve d'activation.
+ Les joueurs affectent leurs dés à leurs équipements pour les activer. Les dés utilisés sont immédiatement retirés de la réserve et l'effet est appliqué.
+ Une fois que tous les joueurs ont déclaré une fin de tour, on passe au tour de l'Essaim.

// --- Tour de l'Essaim ---

= Tour de l'Essaim

=== Étape 1 — Activation

Tous les permanents de l'Essaim présents sur le champ de bataille sont d'abord remis à l'endroit (réinitialisation). Puis ils s'activent dans l'ordre choisi par les joueurs : quand un permanent s'active, il est pivoté à 90° et son effet d'activation est appliqué.

=== Étape 2 — Invasion

Pour chaque secteur, on effectue autant de tirages d'invasion qu'il y a de *cartes Infestation* dans ce secteur. Chaque tirage fonctionne ainsi : on tire des cartes de la pile Essaim jusqu'à ce que la somme des valeurs de Menace atteigne ou dépasse le niveau de menace de la vague. Les cartes tirées entrent en jeu en tant que *permanents* dans le secteur concerné.

- La carte qui fait dépasser le seuil n'entre pas en jeu immédiatement. Elle est mise de côté avec un d6 indiquant les points de menace déjà consommés. Au prochain tirage d'invasion de ce secteur, elle est comptabilisée en premier avec son coût réduit.
- Si la pile Essaim est vide, mélanger la défausse Essaim pour former une nouvelle pile.

=== Structure des cartes de l'Essaim

Chaque carte Essaim de type créature indique :
- *Menace* : valeur comptée lors du tirage d'invasion.
- *ATT* : points d'attaque, dégâts infligés quand la créature attaque.
- *PV* : points de vie, c'est-à-dire le seuil de dégâts à atteindre en une seule salve pour la détruire. Une créature détruite est placée dans la défausse Essaim.
- *Effet* : ce qui se passe quand la carte entre en jeu. Par défaut, les créatures arrivent en zone 3.
- *Activation* : ce qui se passe quand le permanent s'active chaque tour.

Sur les cartes, ATT et PV sont notés en bas sous la forme ATT/PV, et la Menace en haut à droite. Les jetons n'ont pas de valeur de Menace.

Les activations utilisent les mots-clés *Avance*, *Recule* et *Attaque*, définis dans la section Mots-clés, à la fin de ce document.

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Exemple — Bombarde*

  #text(size: 9.5pt)[
    Type : Créature \
    Menace : 3 | ATT : 3 | PV : 3 \
    Effet : entre en jeu en zone 3. \
    Activation : si en zone 1 ou 2, Recule. Si en zone 3, Attaque.
  ]
]

// --- Mort et résurrection ---

= Mort et résurrection

=== Mort

Quand un joueur tombe à 0 PV, il effectue immédiatement deux actions :

+ Il répartit les permanents de son secteur entre les deux secteurs adjacents, dans la même zone qu'ils occupaient.
+ Il passe ses cartes Infestation aux joueurs adjacents. Chaque carte peut aller à un joueur différent.

Un joueur mort n'est plus considéré comme adjacent aux autres joueurs : les distances et les adjacences se recalculent sans lui. Ces décisions sont prises une seule fois au moment de la mort.

=== Résurrection

Quand un joueur est ramené à la vie, les joueurs adjacents lui restituent une ou plusieurs de ses cartes Infestation. La contrainte est qu'à tout moment chaque joueur en jeu doit conserver au minimum 1 carte Infestation. Les permanents déjà placés dans d'autres secteurs ne bougent pas.

// --- Phase de préparation ---

= Phase de préparation

Quand le dernier round d'une vague est tenu, l'Essaim bat en retraite : tous ses permanents encore en jeu sont détruits, ainsi que les cartes mises de côté lors des tirages d'invasion. Les cartes rejoignent la défausse Essaim et les jetons leur réserve. Rien n'est reporté sur la vague suivante.

Entre chaque vague, tout est remis à zéro : PV, PA, pénalités dues à la mort. Chaque joueur récupère sa carte Infestation si elle avait été transmise.

+ *Draft* : chaque joueur tire 3 cartes de la pile d'équipement et peut en ajouter 1 à son arsenal (ou aucune). Les cartes non choisies partent ensuite en défausse équipement.
+ *Échange* : chaque joueur peut donner un équipement de son arsenal à un autre joueur de son choix.
+ *Défausse* : chaque joueur retire de son arsenal les équipements de son choix jusqu'à ce que la somme des valeurs de Stockage ne dépasse plus sa valeur de PS.

// --- Fin de partie ---

= Fin de partie

*Défaite* : tous les joueurs sont à 0 PV lors d'un même round.

*Score* : nombre de vagues complètes tenues. L'essaim ne peut être arrêté — seulement repoussé.

// --- Modes de difficulté ---

= Modes de difficulté optionnels

#table(
  columns: (1fr, 1fr, 1fr),
  align: (left, left, left),
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Mode*], [*Communication*], [*Temps*],
  [Standard], [Libre], [Illimité],
  [Difficile], [Libre], [Tour des joueurs limité en temps réel],
  [Expert], [Interdite], [Tour des joueurs limité en temps réel],
)

// --- Mots-clés ---

= Mots-clés

Quand un mot-clé est suivi d'un nombre, noté X ici, ce nombre est indiqué sur la carte.

=== Mots-clés des Slayers

#table(
  columns: (auto, 1fr),
  align: (left, left),
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Mot-clé*], [*Effet*],

  [Dégât X],
  [Inflige X dégâts à chaque cible désignée par la carte. Ces dégâts suivent les règles du seuil et des salves.],

  [Déplacer X],
  [Le joueur choisit une créature dans son secteur ou dans un secteur adjacent, et lui fait faire jusqu'à X pas. Un pas est l'un de ces mouvements : changer d'une zone à l'intérieur de son propre secteur ; passer de son secteur à la même zone d'un secteur adjacent ; passer d'un secteur adjacent à la même zone de son secteur.],

  [Garde X],
  [La carte reste pivotée et le joueur pose dessus un dé hors réserve réglé sur X. Chaque dégât qu'il subit est absorbé par la Garde et fait baisser ce dé de 1, jusqu'à 0. Au début du prochain tour des joueurs, la carte est redressée et la Garde restante est perdue.],

  [Soin X],
  [Le joueur ciblé regagne X PV, sans dépasser ses PV max. Un joueur à 0 PV ne peut pas être soigné : il doit d'abord être ramené en jeu.],
)

=== Mots-clés de l'Essaim

#table(
  columns: (auto, 1fr),
  align: (left, left),
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Mot-clé*], [*Effet*],

  [Avance],
  [La créature se déplace d'une zone vers le joueur (3 → 2 → 1).],

  [Recule],
  [La créature se déplace d'une zone en s'éloignant du joueur (1 → 2 → 3).],

  [Attaque],
  [La créature inflige son ATT en dégâts au joueur du secteur où elle se trouve.],
)
