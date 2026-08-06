
#set page(margin: (x: .3cm, y: .3cm, bottom: .3cm),
          width: 297mm, height: 210mm,)

#set text(size: 9pt)

#columns(3)[
  #include "section1.typ"
  #include "section2.typ"
  #include "section3.typ"
  #include "section4.typ"

  #include "section5.typ"
  #include "section6.typ"
  #include "section7.typ"
  #include "section8.typ"
]

#rotate(-90deg, image("single-page-integral-table.pdf", page: 1, height: 270mm))
#rotate(-90deg, image("single-page-integral-table.pdf", page: 2, height: 270mm))

