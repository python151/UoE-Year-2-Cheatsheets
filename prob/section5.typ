=== Variance

#let Var = "Var"

$ Var X = EE[(X - EE[X])^2] = EE[X^2] - (EE[X])^2 $
$ Var(a X + b) = a^2 Var(X) $

=== Independence

$ X "and" Y "are independent" #linebreak() <==> EE[X Y] = EE[X] EE[Y]
#linebreak() <==> Var(X + Y) = Var(X) Var(Y) $

=== Linear and Monotone Transformations

If $X, Y$ are continuous RVs, $a,b$ are constants ($a != 0$), $g(x)$ is
differentiable and strictly monotone function,

$ Y = a X + B <==> f_Y = 1/abs(a) f_X ((y - b)/a) $

$ Y = g(X) <==> f_Y (y)= f_X (g^(-1)(y)) dot abs((g^(-1))' (y)) $

$ "Inverse function thm:" (g^(-1))' (y) = 1/(g'(g^(-1) (y))) $

$ "CDFs applied to their RVs are Uniform:" #linebreak() Y = F_X (X) <==> Y ~ "Unif"([0, 1]) $
