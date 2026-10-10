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

Les cartes *Jeton* ne sont jamais mélangées dans la pile Essaim : elles sont gardées à part et n'entrent en jeu que lorsqu'une autre carte les crée. Un jeton détruit retourne dans la réserve de jetons. Un jeton *Copie* reprend tout de ce qu'il copie, sauf ce que l'effet qui l'a créé remplace. S'il manque une carte pour représenter un jeton, les joueurs utilisent ce qu'ils ont sous la main.

*Avant la première vague :*

+ Former la pile Essaim avec les seules cartes de rang d'évolution I. Mettre de côté les cartes des rangs II, III et IV, triées par rang.
+ Mélanger séparément la pile d'atouts et la pile Essaim.
+ Les joueurs se disposent en boucle autour de la table.
+ Chaque joueur prend sa *carte d'As* et sa *carte de suivi*, et place devant lui ses trois *atouts de base* : Coup de crosse, Déplacement, Réanimation.
+ Chaque joueur reçoit une carte *Pistolet* qui constitue sa Panoplie de départ.
+ Chaque joueur effectue deux fois le draft de départ : tirer 3 cartes de la pile d'atouts, en choisir 1 (ou aucune), défausser les cartes non choisies.
+ Chaque joueur place une *carte Infestation* dans son secteur.

// --- Caractéristiques ---

= Caractéristiques des joueurs

Chaque joueur incarne un *As*. Sa carte d'As indique ses caractéristiques et un passif qui lui est propre. Les valeurs de base ci-dessous varient d'un As à l'autre.

*PV — Points de Vie* (base 5) \
Nombre de Blessures que le joueur peut encaisser. Au début de chaque vague, il n'a aucune Blessure. Ses PV restants sont ses PV moins ses Blessures : à 0 PV restant, il est mis hors jeu pour la vague en cours.

*PA — Points d'Action* (base 5) \
Nombre de d6 lancés par le joueur à chaque tour. C'est avec ces dés que les joueurs activent leurs atouts. Quels que soient les malus, un joueur lance toujours au moins 1 dé.

*Emplacements* (base 5) \
Limite le nombre d'atouts que le joueur peut porter. Chaque atout occupe un certain nombre d'emplacements, et le total de sa Panoplie ne peut pas dépasser les emplacements de son As.

=== Carte de suivi

À côté de sa carte d'As, chaque joueur a une *carte de suivi* avec deux emplacements, où il pose des d6 pour compter :
- ses *Blessures* : chaque dégât subi ajoute 1 Blessure ;
- sa *Garde* : des points qui absorbent les dégâts à la place des Blessures.

Quand un joueur subit des dégâts, ils retirent d'abord des points de Garde ; le reste devient des Blessures. Si une valeur dépasse 6, on ajoute un second dé.

// --- Panoplie ---

= La Panoplie

L'ensemble des atouts qu'un joueur porte s'appelle sa *Panoplie*.

Chaque atout possède :
- Des *emplacements* : la place que l'atout occupe dans la Panoplie, indiquée dans le carré en haut à droite. Une carte sans carré n'occupe aucun emplacement.
- Une *capacité*, composée d'un coût, d'un effet et d'un nombre d'utilisations.
- Un *type*, sous son nom : Arme, Matériel, Technique ou Module. Les Armes ont aussi une famille (Mêlée, Tir, Explosif ou Énergie), à laquelle certains atouts donnent des bonus.

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
  [Y], [N'importe quelle valeur, sans lien avec X. Si l'effet mentionne X et Y, le joueur choisit quel dé est X et lequel est Y.],
)

Les *points noirs* sous les dés indiquent le nombre d'utilisations possibles par tour. Sans point, la capacité ne s'utilise qu'une fois par tour. Quels que soient les malus, un atout a toujours au moins une utilisation par tour.

Un atout sans aucun dé dessiné n'a pas de coût : son effet s'applique tout seul, au moment indiqué par son texte, sans qu'on l'active.

=== Modules

Un *Module* est un atout qui en améliore un autre. On le glisse sous l'atout qu'il modifie, en laissant dépasser son texte ; cet atout est « l'atout modifié ».

- Un Module occupe ses emplacements comme n'importe quel atout.
- Un atout peut porter autant de Modules qu'on veut.
- Pendant la phase de préparation, un joueur peut réorganiser ses Modules comme il veut : les déplacer d'un atout à un autre, ou les détacher. Une fois la vague commencée, ils ne bougent plus. Un Module qui n'est attaché à rien n'a aucun effet.
- Quand un atout quitte la Panoplie, ses Modules y restent.

=== Marqueurs

Certains atouts accumulent des *marqueurs*. On les compte avec un d6 posé sur la carte, dont la face indique le nombre de marqueurs. Ils restent d'un tour à l'autre, jusqu'à la fin de la vague.

Poser un marqueur passe par l'activation de l'atout, avec son coût et ses utilisations. Retirer un marqueur pour en obtenir l'effet n'est pas une activation : cela ne coûte aucun dé et n'est pas limité par les utilisations.

=== Lire l'effet

Les effets suivent toujours le même ordre : on désigne d'abord les cibles, puis on applique l'effet.

- « Jusqu'à N engeances » : le joueur choisit les engeances, sans dépasser ce nombre.
- « D'une même zone » : toutes les cibles doivent se trouver dans la même zone du même secteur.
- « Dont N au maximum par zone » : le joueur ne peut pas choisir plus de N cibles dans une même zone.
- « À portée N » : chaque cible doit être à portée N ou moins.
- « À portée exactement N » : la cible doit être à portée N, ni plus près ni plus loin.
- « Ces dégâts ignorent le Blindage » : le mot-clé Blindage de la cible ne les réduit pas.
- Seules les engeances subissent les dégâts des atouts. Un effet qui inflige des dégâts sans préciser de cible vise donc une seule engeance.

=== Activer un atout

Une carte est soit *prête*, soit *épuisée*. Activer une carte, c'est appliquer son effet ; elle devient ensuite épuisée. Cela vaut pour les atouts comme pour les cartes de l'Essaim.

Quand un joueur active un atout, il retire immédiatement les dés utilisés de sa réserve d'activation. Une fois qu'une capacité a été utilisée (une ou plusieurs fois), la carte est *épuisée* : on la pivote à 90° pour le montrer, et elle ne peut plus servir tant qu'elle n'est pas redevenue prête, à la fin du tour des joueurs. Si une capacité possède plusieurs utilisations, toutes ses activations doivent être effectuées consécutivement — on ne peut pas intercaler les capacités d'autres atouts entre elles. Chaque activation peut cependant cibler une cible différente.

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Exemple — Pistolet* #h(1fr) _(donnée à tous les joueurs en début de partie)_

  #text(size: 9.5pt)[
    Type : Atout, Arme, Tir — Emplacements : 1 \
    Coût : un dé 4+, trois points noirs (3 utilisations par tour) \
    Effet : Infligez 2 dégâts à portée 2.
  ]
]

=== Atouts de base _(type Atout, Base ; aucun emplacement, donnés à tous les joueurs)_

#table(
  columns: (auto, auto, 1fr),
  align: (left, left, left),
  stroke: 0.5pt,
  fill: (_, row) => if row == 0 { luma(210) } else if calc.odd(row) { luma(248) } else { white },
  inset: 6pt,
  [*Nom*], [*Coût*], [*Effet*],
  [Coup de crosse],
  [Un dé vide],
  [Infligez 1 dégât à portée 1.],

  [Déplacement],
  [Un dé 4+, deux utilisations],
  [Ciblez une engeance de votre secteur ou d'un secteur adjacent. Déplacer 1.],

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

// --- Dégâts et attaques combinées ---

= Dégâts et attaques combinées

On ne note jamais les blessures des engeances de l'Essaim. Une engeance est soit intacte, soit détruite.

*Seuil* : une engeance est détruite si elle subit, en une seule fois, des dégâts supérieurs ou égaux à son Endurance. Sinon, les dégâts sont perdus et l'engeance reste intacte.

*Attaque combinée* : pour additionner des dégâts, un ou plusieurs joueurs déclarent une attaque combinée. Ils annoncent ensemble toutes les activations qui en font partie, paient leurs coûts, activent tous les atouts concernés en même temps, puis résolvent le tout en une seule fois. Chaque engeance additionne les dégâts de toutes les activations de l'attaque combinée qui la touchent, puis compare ce total à ses PV.

- Une attaque combinée peut mêler plusieurs atouts et plusieurs joueurs, tant que chaque activation respecte sa portée.
- Les dés et les utilisations dépensés dans une attaque combinée sont perdus, même si elle ne détruit rien.
- Une fois l'attaque combinée résolue, il ne reste aucune trace des dégâts : la suivante repart de zéro.
- Dans une attaque combinée, une engeance subit des dégâts une fois pour chaque effet qui la touche : chaque activation d'atout, chaque marqueur retiré. Ce qui se déclenche « chaque fois qu'elle subit des dégâts » se déclenche donc autant de fois, et une réduction de dégâts s'applique à chacun séparément, avant l'addition.

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Exemple 1 :* un Guerrier a 3 d'Endurance. Un seul tir de Pistolet (2 dégâts) ne lui fait rien. Deux tirs déclarés en attaque combinée infligent 4 dégâts : il est détruit.

  *Exemple 2 :* une zone contient quatre engeances à 2 d'Endurance. Une attaque combinée associe une arme infligeant 1 dégât aux quatre engeances et une autre infligeant 1 dégât à trois d'entre elles. Trois engeances subissent 2 dégâts et sont détruites ; la quatrième n'en subit qu'un et reste intacte.
]

Les joueurs, eux, n'ont pas d'Endurance mais des PV : les dégâts qu'ils subissent s'accumulent en Blessures jusqu'à la fin de la vague.

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

Chaque carte de la pile Essaim porte un *rang d'évolution*, de I à IV, indiqué à gauche de son nom. Plus le rang est élevé, plus l'engeance est dangereuse.

La partie commence avec les seules cartes de rang I. Avant les vagues 3, 5 et 7, on ajoute à la pile Essaim toutes les cartes du rang indiqué dans le tableau, on y ajoute la défausse Essaim, puis on mélange le tout. Aucune carte n'est jamais retirée : l'Essaim garde ses formes anciennes et en gagne de nouvelles.

Les jetons n'ont pas de rang d'évolution.

// --- Tour des joueurs ---

= Tour des joueurs

Tous les joueurs jouent *simultanément*. La communication est libre.

+ La Garde de chaque joueur est remise à zéro.
+ Chaque joueur lance un nombre de dés égal à ses PA. Ces dés constituent sa réserve d'activation.
+ Les joueurs affectent leurs dés à leurs atouts pour les activer. Les dés utilisés sont immédiatement retirés de la réserve et l'effet est appliqué.
+ Une fois que tous les joueurs ont déclaré une fin de tour, tous les atouts épuisés redeviennent prêts : on les remet droits, et leurs utilisations sont de nouveau disponibles. On passe ensuite au tour de l'Essaim.

// --- Tour de l'Essaim ---

= Tour de l'Essaim

=== Étape 1 — Activation

Tous les permanents de l'Essaim qui ne sont pas épuisés s'activent, dans l'ordre choisi par les joueurs et en respectant le mot-clé *Patience* : quand un permanent s'active, son effet d'activation est appliqué, puis il devient *épuisé* : on le pivote à 90°.

Sauf mention contraire, une engeance créée par un effet entre en jeu *épuisée* : elle ne s'activera pas avant d'être redevenue prête, à la fin du tour de l'Essaim.

=== Étape 2 — Invasion

Pour chaque secteur, on effectue autant de tirages d'invasion qu'il y a de *cartes Infestation* dans ce secteur. Chaque tirage fonctionne ainsi : on tire des cartes de la pile Essaim jusqu'à ce que la somme des valeurs de Menace atteigne ou dépasse le niveau de menace de la vague. Les cartes engeance tirées entrent en jeu en tant que *permanents* dans le secteur concerné. Une carte *Impulsion* n'entre pas en jeu : on applique son effet au secteur concerné, puis on la place dans la défausse Essaim.

- La carte qui fait dépasser le seuil n'entre pas en jeu immédiatement. Elle est mise de côté avec un d6 indiquant les points de menace déjà consommés. Au prochain tirage d'invasion de ce secteur, elle est comptabilisée en premier avec son coût réduit.
- Si la pile Essaim est vide, mélanger la défausse Essaim pour former une nouvelle pile.

=== Structure des cartes de l'Essaim

Chaque carte Essaim de type engeance indique :
- *Rang d'évolution*, en chiffre romain à gauche du nom : le moment de la partie où la carte rejoint la pile. Les jetons n'en ont pas.
- *Menace*, dans le carré en haut à droite : valeur comptée lors du tirage d'invasion. Les jetons n'ont pas de carré : leur Menace vaut 0.
- *Activation*, dans le cadre de texte : trois blocs numérotés 3, 2 et 1, chacun suivi d'un effet. Quand l'engeance s'active, elle applique l'effet du bloc correspondant à la zone où elle se trouve. Quand plusieurs blocs sont regroupés devant un même effet, cet effet vaut pour chacune de ces zones.
- *Passif*, sous le filet : un effet permanent ou déclenché, qui ne dépend pas de l'activation. Toutes les engeances n'en ont pas.
- *Attaque*, dans l'encart en bas à gauche : dégâts infligés quand l'engeance attaque.
- *Endurance*, dans l'encart en bas à droite : le seuil de dégâts à atteindre en une seule attaque combinée pour la détruire. Une engeance détruite est placée dans la défausse Essaim.

Sauf indication contraire, une engeance entre en jeu en zone 3.

=== Emprises

Une *Emprise* est un permanent de l'Essaim qui n'est pas une engeance : elle n'a ni zone, ni Attaque, ni Endurance. Elle se pose dans le secteur où elle est tirée et n'affecte que ce secteur. Elle ne peut pas être ciblée, blessée ni déplacée.

Comme tout permanent de l'Essaim, une Emprise s'active pendant le tour de l'Essaim, puis devient épuisée. Si elle porte un effet d'activation, marqué du symbole d'activation (un triangle blanc dans un carré noir), cet effet s'applique à ce moment-là. Ses autres effets s'appliquent en permanence, qu'elle soit prête ou épuisée.

Pour retirer une Emprise, un joueur doit payer le coût dessiné sur la carte, qui se lit comme le coût d'un atout. « Total 10+ » demande des dés dont la somme atteint au moins 10.

- Seuls l'As du secteur et les As des secteurs adjacents peuvent payer.
- Un coût en dés précis (une valeur, une paire, un brelan, une suite) se paie en une seule fois, par un seul joueur, pendant un seul tour.
- Un coût « Total » se paie petit à petit : les dés dépensés restent posés sur la carte, d'un tour à l'autre, jusqu'à ce que leur somme atteigne le total. Plusieurs joueurs peuvent y contribuer.
- Une Emprise retirée est placée dans la défausse Essaim.

Une carte Infestation n'est pas une Emprise : rien de ce qui retire ou détruit une Emprise ne peut l'affecter.

=== Mutations

Une *Mutation* est une carte Essaim qui s'attache à une engeance pour la modifier. Quand elle est tirée, on la glisse sous l'engeance désignée par son texte, en laissant dépasser ce texte.

- L'engeance mutée est choisie dans le secteur du tirage. « La plus proche de l'As » désigne l'engeance dans la zone au numéro le plus bas.
- Les jetons ne peuvent pas être mutés : on les ignore pour choisir l'engeance.
- S'il n'y a aucune engeance à muter, la Mutation est placée dans la défausse Essaim et sa Menace n'est pas comptée dans le tirage.
- Une Mutation suit son engeance quand elle est déplacée, et part dans la défausse Essaim quand l'engeance est détruite.
- Une engeance peut porter plusieurs Mutations. Leurs bonus s'additionnent.

=== Impulsions

Une *Impulsion* est une carte Essaim sans Attaque ni Endurance : c'est un ordre bref de l'esprit-ruche. Elle a un rang d'évolution et une Menace comme les engeances, et compte normalement dans le tirage d'invasion.

Quand un effet dit qu'une engeance s'active, elle applique son effet d'activation, même si elle est épuisée.

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
    Rang d'évolution : I | Menace : 3 | Attaque : 2 | Endurance : 2 \
    Zone 3 : Attaque. \
    Zones 2 et 1 : Recule 1.
  ]
]

=== Étape 3 — Fin du tour

Tous les permanents de l'Essaim épuisés redeviennent prêts : on les remet droits.

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

Entre chaque vague, tout est remis à zéro : PV, PA, marqueurs, pénalités dues à la mort. Chaque joueur récupère sa carte Infestation si elle avait été transmise.

+ *Évolution* : avant les vagues 3, 5 et 7, ajouter à la pile Essaim les cartes du nouveau rang d'évolution, puis la mélanger avec sa défausse.
+ *Draft* : chaque joueur tire 3 cartes de la pile d'atouts et peut en ajouter 1 à sa Panoplie (ou aucune). Les cartes non choisies partent ensuite en défausse d'atouts.
+ *Échange* : chaque joueur peut donner un atout de sa Panoplie à un autre joueur de son choix.
+ *Défausse* : chaque joueur retire de sa Panoplie les atouts de son choix jusqu'à ce qu'ils tiennent dans les emplacements de son As.
+ *Modules* : chaque joueur attache, déplace ou détache ses Modules. Ils resteront en place pendant toute la vague.

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
  [La cible fait jusqu'à X pas, au choix du joueur. Sans cible désignée, le joueur choisit une engeance dans son secteur ou dans un secteur adjacent. Un pas est l'un de ces mouvements : changer d'une zone à l'intérieur de son propre secteur ; passer de son secteur à la même zone d'un secteur adjacent ; passer d'un secteur adjacent à la même zone de son secteur.],

  [Armer X],
  [Placez X marqueurs sur cet atout, sans dépasser le maximum qu'il indique.],

  [Paralyser X],
  [Épuisez une engeance dont la Menace est de X ou moins. Elle n'applique pas son effet.],

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
  [L'engeance se déplace de X zones vers le joueur (3 → 2 → 1). Elle s'arrête en zone 1.],

  [Recule X],
  [L'engeance se déplace de X zones en s'éloignant du joueur (1 → 2 → 3). Elle s'arrête en zone 3.],

  [Attaque],
  [L'engeance inflige son Attaque en dégâts à l'As du secteur où elle se trouve.],

  [Blindage X],
  [Chaque fois que cette engeance subit des dégâts, elle en subit X de moins. Les Blindages s'additionnent : une engeance qui a Blindage 2 et gagne Blindage 1 a Blindage 3.],

  [Patience X],
  [Pendant l'activation de l'Essaim, une engeance ne peut s'activer que lorsque toutes les engeances de Patience inférieure se sont activées. Une engeance sans ce mot-clé a Patience 0.],
)
