// Configure page settings for the cheatsheet format
#set page(margin: (x: .3cm, y: .3cm, bottom: .3cm),
          width: 297mm, height: 210mm,)

#set text(size: 9pt)
#show heading.where(level: 2): set text(9pt, weight: "bold")


#let cols = 5;
#let dxs = (100%+.04cm, 200%+.05cm, 300%+.2cm, 400%+.325cm);
#let dx1s = (-.075cm, -100%-.175cm, -200%-.275cm, -300%-.375cm);
#columns(cols, gutter: .10cm)[
    #for dx in dxs {
        place(
            top,
            clearance: 0cm,
            dx: dx, dy: 0%,
            [#line(length: 100%, angle: 90deg)]
        );
    }
    #include "sem1.typ"
    #include "sem2.typ"
    #for dx in dx1s {
        place(
            top,
            clearance: 0cm,
            dx: dx, dy: 0%,
            [#line(length: 100%, angle: 90deg)]
        );
    }
]

