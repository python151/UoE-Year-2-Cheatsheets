=== Joint Probability Densities

If $X, Y$ are independent, then $p_(X,Y) (x, y) = p_X (x) p_Y (y)$.

$ F_(X,Y) = integral_A integral_B f_(X,Y) (x, y) d y d x $

=== Covariance & Correlation

#let Cov = "Cov"
#let Cor = "Cor"
#let Var = "Var"

$ "Cov"(X, Y) = EE[X Y] - EE[X] EE[Y] = EE[(X - EE[X])(Y - EE[Y])] $
$ X "and" Y "are ind." ==> "Cov"(X, Y) = 0 ("conv. not always true") $
$ Cov(X, Y) = Cov(Y, X) #h(2em) Cov(X, X) = Var(X) $
$ Cov(a X + b Y + c,Z) = a Cov(X, Z) + b Cov(Y, Z) forall a, b in RR $
$ "Correlation:" Cor(X, Y) = Cov(X, Y)/sqrt(Var(X) Var(Y)) $
$ -1 lt.eq Cor(X, Y) lt.eq 1 $

==== Cute Lemmas

$ "Prop 7.2.1" Var(X + Y) = Var(X) + Var(Y) + 2 Cov(X, Y) $
$ "Thm 7.22" Cov(X, Y)^2 lt.eq Var(X) Var(Y) $
