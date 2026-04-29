// Configure page settings for the cheatsheet format
#set page(margin: (x: .3cm, y: .3cm, bottom: .3cm),
          width: 297mm, height: 210mm,)

#set text(size: 9pt)
#show heading.where(level: 2): set text(9pt, weight: "bold")


#columns(5, gutter: .1cm)[
    #include "sem1.typ"
    #include "sem2.typ"
]

