#import "card.typ": card

#set page(
  paper: "a4",
  margin: 1cm  // Applique 2cm sur tous les côtés
)

// Exemples d'utilisation
#align(center + horizon)[
    #grid(
        columns: 2,
        column-gutter: 1em,
        row-gutter: 1em,
        
        // Créature basique
        card(
            "Gobelin des cavernes",
            cost: "1R",
            type_line: "Créature — Gobelin",
            rules_text: "Célérité\n\nLes Gobelins des cavernes attaquent à chaque tour si possible.",
            flavor_text: "\"Moi courir vite ! Moi frapper fort !\"",
            power: "2",
            toughness: "1",
            artist: "A. Rtiste",
            rarity: "common",
            set_symbol: "⚡",
            background_color: rgb("#ffcccc"), // Rouge pâle
        ),
        
        // Sort
        card(
            "Éclair",
            cost: "R",
            type_line: "Éphémère",
            rules_text: "L'Éclair inflige 3 blessures à n'importe quelle cible.",
            flavor_text: "La foudre ne frappe jamais deux fois au même endroit, mais une fois suffit.",
            artist: "B. Rtiste",
            rarity: "common",
            set_symbol: "⚡",
            background_color: rgb("#ffcccc"),
        ),
        
        // Créature plus puissante
        card(
            "Dragon ancien",
            cost: "6RR",
            type_line: "Créature — Dragon",
            rules_text: "Vol\n\nQuand le Dragon ancien arrive sur le champ de bataille, il inflige 4 blessures à une cible au choix.",
            power: "6",
            toughness: "6",
            artist: "C. Rtiste",
            rarity: "rare",
            set_symbol: "⚡",
            background_color: rgb("#ffcccc"),
        ),
        
        // Terrain
        card(
            "Montagne",
            type_line: "Terrain de base — Montagne",
            rules_text: "T: Ajoutez R.",
            artist: "D. Rtiste",
            rarity: "common",
            background_color: rgb("#ffdddd"),
        ),
        
        // Artefact
        card(
            "Épée de lumière",
            cost: "3",
            type_line: "Artefact — Équipement",
            rules_text: "La créature équipée gagne +2/+1 et a la protection contre le noir et contre le rouge.\n\nÉquiper 2",
            artist: "E. Rtiste",
            rarity: "uncommon",
            set_symbol: "⚡",
            background_color: rgb("#f0f0f0"), // Gris clair pour les artefacts
        ),
        
        // Enchantement
        card(
            "Bénédiction divine",
            cost: "1W",
            type_line: "Enchantement",
            rules_text: "Toutes les créatures que vous contrôlez gagnent +1/+1 et ont la vigilance.",
            flavor_text: "La lumière divine guide les justes.",
            artist: "F. Rtiste",
            rarity: "uncommon",
            set_symbol: "⚡",
            background_color: rgb("#ffffcc"), // Jaune pâle pour le blanc
        ),
    )
]