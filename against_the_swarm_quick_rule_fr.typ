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
        Quelque part dans les confins de la galaxie, une équipe d'As affronte une menace sans fin. L'essaim ne peut pas être vaincu, seulement repoussé. Combien de temps tiendrez-vous ?
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
- *Pile d'atouts* : source des cartes proposées lors du draft.
- *Pile Essaim* : source des renforts lors de la phase d'invasion.

Quand une pile est vide, on mélange sa défausse pour former une nouvelle pile.

Les cartes *Jeton* ne sont jamais mélangées dans la pile Essaim : elles sont gardées à part et n'entrent en jeu que lorsqu'une autre carte les crée. Un jeton détruit retourne dans la réserve de jetons.

*Avant la première vague :*

+ Former la pile Essaim avec les seules cartes de rang d'évolution I. Mettre de côté les cartes des rangs II, III et IV, triées par rang.
+ Mélanger séparément la pile d'atouts et la pile Essaim.
+ Les joueurs se disposent en boucle autour de la table.
+ Chaque joueur prend sa *carte d'As* et sa *carte de suivi*, et place devant lui ses trois *cartes de base* : Coup de crosse, Déplacement, Réanimation.
+ Chaque joueur reçoit une carte *Pistolet* qui constitue son arsenal de départ.
+ Chaque joueur effectue deux fois le draft de départ : tirer 3 cartes de la pile d'atouts, en choisir 1 (ou aucune), défausser les cartes non choisies.
+ Chaque joueur place une *carte Infestation* dans son secteur.

// --- Caractéristiques ---

= Caractéristiques des joueurs

Les caractéristiques de chaque joueur sont indiquées sur sa *carte d'As* :

*PV — Points de Vie* (base 5) \
Nombre de Blessures que le joueur peut encaisser. Au début de chaque vague, il n'a aucune Blessure. Ses PV restants sont ses PV moins ses Blessures : à 0 PV restant, il est mis hors jeu pour la vague en cours.

*PA — Points d'Action* (base 5) \
Nombre de d6 lancés par le joueur à chaque tour. C'est avec ces dés que les joueurs activent leurs atouts. Quels que soient les malus, un joueur lance toujours au moins 1 dé.

*Charge max* (base 5) \
Limite le nombre d'atouts que le joueur peut porter. La somme des valeurs de Charge de son arsenal ne peut pas dépasser sa Charge max.

=== Carte de suivi

À côté de sa carte d'As, chaque joueur a une *carte de suivi* avec deux emplacements, où il pose des d6 pour compter :
- ses *Blessures* : chaque dégât subi ajoute 1 Blessure ;
- sa *Garde* : des points qui absorbent les dégâts à la place des Blessures.

Quand un joueur subit des dégâts, ils retirent d'abord des points de Garde ; le reste devient des Blessures. Si une valeur dépasse 6, on ajoute un second dé.

// --- Arsenal ---

= L'Arsenal

L'ensemble des atouts qu'un joueur porte s'appelle son *arsenal*.

Chaque atout possède :
- Une *Charge* : la place que l'atout occupe dans l'arsenal, indiquée dans le carré en haut à droite. Une carte sans carré a une Charge de 0.
- Une *capacité*, composée d'un coût, d'un effet et d'un nombre d'utilisations.

=== Lire le coût

Le coût est dessiné sous forme de dés, entre l'illustration et le texte. Chaque dé dessiné est un dé que le joueur doit dépenser, et ce qui est écrit dedans indique la valeur exigée.

#table(
  columns: (auto, 1fr),
  align: (center, left),
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Dé*], [*Valeur exigée*],
  [6], [Exactement cette valeur.],
  [4+], [Cette valeur ou plus.],
  [2−], [Cette valeur ou moins.],
  [_(vide)_], [N'importe quelle valeur.],
  [X], [N'importe quelle valeur, mais tous les dés marqués X doivent être identiques. Deux dés X forment donc une paire. Si l'effet mentionne X, il vaut la valeur de ces dés.],
  [X+1], [La valeur de X, plus 1.],
)

Les *points noirs* sous les dés indiquent le nombre d'utilisations possibles par tour. Sans point, la capacité ne s'utilise qu'une fois par tour.

=== Lire l'effet

Les effets suivent toujours le même ordre : on désigne d'abord les cibles, puis on applique l'effet.

- « Jusqu'à N créatures » : le joueur choisit les créatures, sans dépasser ce nombre.
- « D'une même zone » : toutes les cibles doivent se trouver dans la même zone du même secteur.
- « Dont N au maximum par zone » : le joueur ne peut pas choisir plus de N cibles dans une même zone.
- « À portée N » : chaque cible doit être à portée N ou moins.

=== Activer un atout

Quand un joueur active un atout, il retire immédiatement les dés utilisés de sa réserve d'activation. Une fois qu'une capacité a été utilisée (une ou plusieurs fois), la carte est *activée* : on la pivote à 90° pour le montrer, et elle ne peut plus servir tant qu'elle n'est pas désactivée, à la fin du tour des joueurs. Si une capacité possède plusieurs utilisations, toutes ses activations doivent être effectuées consécutivement — on ne peut pas intercaler les capacités d'autres atouts entre elles. Chaque activation peut cependant cibler une cible différente.

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Exemple — Pistolet* #h(1fr) _(donnée à tous les joueurs en début de partie)_

  #text(size: 9.5pt)[
    Type : Atout, Arme — Charge : 1 \
    Coût : un dé 4+, trois points noirs (3 utilisations par tour) \
    Effet : Infligez 2 dégâts à une créature à portée 2.
  ]
]

=== Cartes de base _(Charge 0, données à tous les joueurs)_

#table(
  columns: (auto, auto, 1fr),
  align: (left, left, left),
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Nom*], [*Coût*], [*Effet*],
  [Coup de crosse],
  [Un dé vide],
  [Infligez 1 dégât à une créature à portée 1.],

  [Déplacement],
  [Un dé 4+],
  [Déplacer 1.],

  [Réanimation],
  [Deux dés 6],
  [Un joueur adjacent revient en jeu avec 1 PV restant. Il perd 2 PA jusqu'à la fin de la vague.],
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
  *Exemple :* un atout à portée 2 peut atteindre un permanent en zone 1 du secteur voisin (2 − 1 = 1 ✓). Il ne peut pas atteindre la zone 2 du même secteur voisin (portée insuffisante).
]

// --- Dégâts et tirs combinés ---

= Dégâts et tirs combinés

On ne note jamais les blessures des créatures de l'Essaim. Une créature est soit intacte, soit détruite.

*Seuil* : une créature est détruite si elle subit, en une seule fois, des dégâts supérieurs ou égaux à ses PV. Sinon, les dégâts sont perdus et la créature reste intacte.

*Tir combiné* : pour additionner des dégâts, un ou plusieurs joueurs déclarent un tir combiné. Ils annoncent ensemble toutes les activations qui en font partie, paient leurs coûts, activent tous les atouts concernés en même temps, puis résolvent le tout en une seule fois. Chaque créature additionne les dégâts de toutes les activations du tir combiné qui la touchent, puis compare ce total à ses PV.

- Un tir combiné peut mêler plusieurs atouts et plusieurs joueurs, tant que chaque activation respecte sa portée.
- Les dés et les utilisations dépensés dans un tir combiné sont perdus, même s'il ne détruit rien.
- Une fois le tir combiné résolu, il ne reste aucune trace des dégâts : le suivant repart de zéro.
- Quand un effet réduit les dégâts, la réduction s'applique à chaque activation séparément, avant l'addition. Une activation réduite à 0 n'apporte rien au tir combiné.

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Exemple 1 :* un Guerrier a 3 PV. Un seul tir de Pistolet (2 dégâts) ne lui fait rien. Deux tirs déclarés en tir combiné infligent 4 dégâts : il est détruit.

  *Exemple 2 :* une zone contient quatre créatures à 2 PV. Un tir combiné associe une arme infligeant 1 dégât aux quatre créatures et une autre infligeant 1 dégât à trois d'entre elles. Trois créatures subissent 2 dégâts et sont détruites ; la quatrième n'en subit qu'un et reste intacte.
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
  columns: (1fr, 1fr, 1fr, 1.3fr),
  align: center,
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Vague*], [*Rounds à tenir*], [*Niveau de menace*], [*Rang ajouté à la pile*],
  [1], [5], [6], [I (pile de départ)],
  [2], [5], [7], [],
  [3], [6], [7], [II],
  [4], [6], [8], [],
  [5], [7], [8], [III],
  [6], [7], [9], [],
  [7], [8], [9], [IV],
  [8], [8], [10], [],
)

=== Rang d'évolution

Chaque carte de la pile Essaim porte un *rang d'évolution*, de I à IV, indiqué à gauche de son nom. Plus le rang est élevé, plus la créature est dangereuse.

La partie commence avec les seules cartes de rang I. Avant les vagues 3, 5 et 7, on ajoute à la pile Essaim toutes les cartes du rang indiqué dans le tableau, on y ajoute la défausse Essaim, puis on mélange le tout. Aucune carte n'est jamais retirée : l'Essaim garde ses formes anciennes et en gagne de nouvelles.

Les jetons n'ont pas de rang d'évolution.

// --- Tour des joueurs ---

= Tour des joueurs

Tous les joueurs jouent *simultanément*. La communication est libre.

+ La Garde de chaque joueur est remise à zéro.
+ Chaque joueur lance un nombre de dés égal à ses PA. Ces dés constituent sa réserve d'activation.
+ Les joueurs affectent leurs dés à leurs atouts pour les activer. Les dés utilisés sont immédiatement retirés de la réserve et l'effet est appliqué.
+ Une fois que tous les joueurs ont déclaré une fin de tour, toutes les cartes d'atout et de base activées sont désactivées : on les remet droites, et leurs utilisations sont de nouveau disponibles. On passe ensuite au tour de l'Essaim.

// --- Tour de l'Essaim ---

= Tour de l'Essaim

=== Étape 1 — Activation

Tous les permanents de l'Essaim qui ne sont pas déjà activés s'activent, dans l'ordre choisi par les joueurs : quand un permanent s'active, son effet d'activation est appliqué et il devient *activé* : on le pivote à 90°.

Sauf mention contraire, une créature créée par un effet entre en jeu *déjà activée* : elle ne s'activera pas avant d'avoir été désactivée, à la fin du tour de l'Essaim.

=== Étape 2 — Invasion

Pour chaque secteur, on effectue autant de tirages d'invasion qu'il y a de *cartes Infestation* dans ce secteur. Chaque tirage fonctionne ainsi : on tire des cartes de la pile Essaim jusqu'à ce que la somme des valeurs de Menace atteigne ou dépasse le niveau de menace de la vague. Les cartes créature tirées entrent en jeu en tant que *permanents* dans le secteur concerné. Une carte *Impulsion* n'entre pas en jeu : on applique son effet au secteur concerné, puis on la place dans la défausse Essaim.

- La carte qui fait dépasser le seuil n'entre pas en jeu immédiatement. Elle est mise de côté avec un d6 indiquant les points de menace déjà consommés. Au prochain tirage d'invasion de ce secteur, elle est comptabilisée en premier avec son coût réduit.
- Si la pile Essaim est vide, mélanger la défausse Essaim pour former une nouvelle pile.

=== Structure des cartes de l'Essaim

Chaque carte Essaim de type créature indique :
- *Rang d'évolution*, en chiffre romain à gauche du nom : le moment de la partie où la carte rejoint la pile. Les jetons n'en ont pas.
- *Menace*, dans le carré en haut à droite : valeur comptée lors du tirage d'invasion. Les jetons n'ont pas de Menace, donc pas de carré.
- *Activation*, dans le cadre de texte : trois blocs numérotés 3, 2 et 1, chacun suivi d'un effet. Quand la créature s'active, elle applique l'effet du bloc correspondant à la zone où elle se trouve. Quand les trois blocs sont regroupés devant un seul effet, cet effet s'applique quelle que soit la zone.
- *Passif*, sous le filet : un effet permanent ou déclenché, qui ne dépend pas de l'activation. Toutes les créatures n'en ont pas.
- *ATT*, dans l'encart en bas à gauche : dégâts infligés quand la créature attaque.
- *PV*, dans l'encart en bas à droite : le seuil de dégâts à atteindre en un seul tir combiné pour la détruire. Une créature détruite est placée dans la défausse Essaim.

Sauf indication contraire, une créature entre en jeu en zone 3.

=== Impulsions

Une *Impulsion* est une carte Essaim sans ATT ni PV : c'est un ordre bref de l'esprit-ruche. Elle a un rang d'évolution et une Menace comme les créatures, et compte normalement dans le tirage d'invasion.

Quand un effet dit qu'une créature s'active, elle applique son effet d'activation, même si elle est déjà activée.

Quand une carte dit « choisissez », ce sont toujours les joueurs qui choisissent. Il en va de même pour toute égalité ou ambiguïté dans un effet de l'Essaim.

Les activations utilisent les mots-clés *Avance X*, *Recule X* et *Attaque*, définis dans la section Mots-clés, à la fin de ce document.

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Exemple — Bombarde*

  #text(size: 9.5pt)[
    Rang d'évolution : I | Menace : 3 | ATT : 3 | PV : 3 \
    Zone 3 : Attaque. \
    Zone 2 : Recule 1. \
    Zone 1 : Recule 1.
  ]
]

=== Étape 3 — Fin du tour

Tous les permanents de l'Essaim activés sont désactivés : on les remet droits.

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

+ *Évolution* : avant les vagues 3, 5 et 7, ajouter à la pile Essaim les cartes du nouveau rang d'évolution, puis la mélanger avec sa défausse.
+ *Draft* : chaque joueur tire 3 cartes de la pile d'atouts et peut en ajouter 1 à son arsenal (ou aucune). Les cartes non choisies partent ensuite en défausse d'atouts.
+ *Échange* : chaque joueur peut donner un atout de son arsenal à un autre joueur de son choix.
+ *Défausse* : chaque joueur retire de son arsenal les atouts de son choix jusqu'à ce que la somme des valeurs de Charge ne dépasse plus sa Charge max.

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

=== Mots-clés des As

#table(
  columns: (auto, 1fr),
  align: (left, left),
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Mot-clé*], [*Effet*],

  [Déplacer X],
  [Le joueur choisit une créature dans son secteur ou dans un secteur adjacent, et lui fait faire jusqu'à X pas. Un pas est l'un de ces mouvements : changer d'une zone à l'intérieur de son propre secteur ; passer de son secteur à la même zone d'un secteur adjacent ; passer d'un secteur adjacent à la même zone de son secteur.],

  [Garde X],
  [Le joueur ajoute X points de Garde sur sa carte de suivi. La Garde est remise à zéro au début du tour des joueurs.],

  [Soin X],
  [Le joueur ciblé retire X Blessures de sa carte de suivi. Un joueur hors jeu ne peut pas être soigné : il doit d'abord être ramené en jeu.],
)

=== Mots-clés de l'Essaim

#table(
  columns: (auto, 1fr),
  align: (left, left),
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Mot-clé*], [*Effet*],

  [Avance X],
  [La créature se déplace de X zones vers le joueur (3 → 2 → 1). Elle s'arrête en zone 1.],

  [Recule X],
  [La créature se déplace de X zones en s'éloignant du joueur (1 → 2 → 3). Elle s'arrête en zone 3.],

  [Attaque],
  [La créature inflige son ATT en dégâts au joueur du secteur où elle se trouve.],

  [Blindage X],
  [Chaque activation d'atout inflige X dégâts de moins à cette créature. Dans un tir combiné, la réduction s'applique à chaque activation séparément.],
)
