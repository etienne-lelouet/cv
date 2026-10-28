// Page setup
#set document(title: "CV - Etienne Le Louët", author: "Etienne Le Louët")
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.0cm))
#set text(font: "Libertinus Serif", size: 10pt, lang: "fr")
#set par(justify: true, leading: 0.5em, spacing: 0.5em)
#set block(spacing: 0.5em)
#show link: it => text(fill: black, it)

// Section: small caps heading with thin rule below; never split across pages
#let section(title, body) = block(above: 1.1em, breakable: false)[
  #block(
    below: 0.6em,
    stroke: (bottom: 0.5pt + black),
    inset: (bottom: 0.25em),
    width: 100%,
    text(size: 11pt, weight: "bold", smallcaps(title)),
  )
  #body
]

// Entry: date in left column, content in right column
#let entry(date, body) = {
  grid(
    columns: (3.9cm, 1fr),
    column-gutter: 0.6em,
    par(justify: false, date),
    body,
  )
  v(0.35em)
}

// --- En-tête ---
#align(center)[
  #text(size: 18pt, weight: "bold", smallcaps[Etienne Le Louët])
  #v(0.2em)
  Ingénieur Recherche et Développement chez Gandi · Doctorant en informatique à Sorbonne Université (LIP6)
  #v(0.4em)
  #text(size: 9.5pt)[
    26 rue de la Providence, 75013 Paris \
    #link("mailto:etiennelelouet@outlook.com")[etiennelelouet\@outlook.com]
    #h(0.6em) · #h(0.6em)
    #link("https://linkedin.com/in/eajlelouet")[linkedin.com/in/eajlelouet]
    #h(0.6em) · #h(0.6em)
    #link("https://github.com/etienne-lelouet")[github.com/etienne-lelouet]
  ]
]

#section[Formation][
  #entry[2022 à aujourd'hui][
    *Doctorat : DNS haute performance, sécurisé et fiable* \
    Sorbonne Université, LIP6 (équipe DELYS), CIFRE avec Gandi
  ]

  #entry[2019 à 2021][
    *Master d'informatique SAR (Systèmes et Applications Réparties)* \
    Sorbonne Université, mention bien
  ]

  #entry[2016 à 2019][
    *Licence d'informatique en apprentissage (DANT)* \
    Sorbonne Université, mention bien
  ]
]

#section[Expériences professionnelles][
  #entry[Depuis juin 2026][
    *Ingénieur Recherche et Développement*, Gandi
  ]

  #entry[Mars 2021 – Sept. 2021][
    *Stage Recherche et Développement*, Gandi \
    Étude des performances des résolveurs DNS over HTTPS
  ]

  #entry[Sept. 2018 – Sept. 2019][
    *Développeur Full Stack en apprentissage*, KMB Labs \
    NodeJS, React, Google Cloud Platform, Amazon Web Services
  ]

  #entry[Sept. 2016 – Sept. 2018][
    *Développeur en apprentissage*, Spotlook \
    Développement web fullstack et systèmes embarqués : PHP, MySQL, JavaScript, VB.net
  ]
]

#section[Publications][
  #entry[\[1\]][
    *Etienne Le Louet*, Antoine Blin, Julien Sopena, Ahmed Amamou, Kamel Haddadou.
    Effects of secured DNS transport on resolver performance.
    _ITU Journal on Future and Evolving Technologies_, vol. 5, no. 1, pp. 47–61, 2024.
    #link("https://doi.org/10.52953/NUXL5710")[doi:10.52953/NUXL5710] \
    #text(size: 9.5pt, style: "italic")[Version étendue de l'article ISCC 2023]
  ]

  #entry[\[2\]][
    *Etienne Le Louet*, Antoine Blin, Julien Sopena, Ahmed Amamou, Kamel Haddadou.
    Effects of secured DNS transport on resolver performance.
    _IEEE Symposium on Computers and Communications (ISCC)_, pp. 238–244, 2023.
    #link("https://doi.org/10.1109/ISCC58397.2023.10217887")[doi:10.1109/ISCC58397.2023.10217887]
  ]
]

#section[Communications scientifiques][
  #entry[Juillet 2026][
    *ComPAS 2026*, conférence francophone en parallélisme, architecture et système \
    Présentation de mes travaux de thèse
  ]

  #entry[Janvier 2026][
    *École d'hiver du GDR RSD* \
    Présentation de mes travaux de thèse et présidence d'une session
  ]

  #entry[Juillet 2024][
    *ComPAS 2024*, conférence francophone en parallélisme, architecture et système \
    Présentation de mes travaux de thèse
  ]
]

#section[Enseignement][
  #entry[4 × 40h][
    *Programmation Objet Avancée (POBJ)*, chargé de TD en L3 informatique \
    Java, patrons de conception classiques
  ]

  #entry[1 × 40h][
    *Programmation Système Concurrente et Répartie (PSCR)*, chargé de TD en M1 informatique \
    Programmation système POSIX en C++
  ]

  #entry[1 × 40h][
    *Programmation Noyau Linux (PNL)*, chargé de TD en M1 informatique \
    Programmation noyau Linux
  ]
]

#section[Compétences techniques][
  #entry[*Programmation système*][C (APIs POSIX, libuv), Rust, programmation noyau Linux (sous-système net / netdev), eBPF]
  #entry[*Réseaux*][TCP/IP et DNS (protocoles et implémentations), pile réseau Linux (qdisc, netfilter, interfaces virtuelles)]
  #entry[*Virtualisation*][Fondements de la virtualisation des systèmes d'exploitation, libvirt, Docker / Podman]
  #entry[*Administration système*][Linux, Ansible]
  #entry[*Rédaction scientifique*][Publications en revue et conférence internationales]
]

#section[Langues][
  #entry[*Français*][Langue maternelle]
  #entry[*Anglais*][Courant]
]
