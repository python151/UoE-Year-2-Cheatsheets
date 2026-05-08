// Configure page settings for the cheatsheet format
#set page(margin: (x: .5cm, y: .5cm, bottom: .75cm),
          width: 297mm, height: 210mm,
          number-align: center,
          numbering: "1")

#set text(size: 10pt)

#columns(4, gutter: .1cm)[
    #include "analysis.typ"
    #include "algebra.typ"
]

