#import "@preview/diverential:0.3.0": *

== First-Order ODEs

Considering the general first order ODE $dv(y, t) = f(t, y)$, there's no single
way of solving with elementary functions, instead we break into subclasses.

=== Linear Equations

An equation of the form,

$ dv(y, x) + P(x)y = Q(x) $

Can be solved by multiplying both sides by the integrating factor $e^(integral
P(x) d x)$, and yields,

$ y = 1/(e^(integral P(x) d x)) [integral e^(integral P(x) d x) Q(x) d x + C] $

=== Seperable Equations

An equation of the form

$ dv(y, x) = g(x)h(x) $

Can be seperated and integrated, yielding

$ integral 1/(h(y)) d y = integral g(x) d x $

=== Homogenous Equations

The ODE

$ dv(y, x) = f(x, y) "is homogenous if" f(x, y) = g(y/x) $

*Note:* not like homogenous used in the classifications before!

These can be solved with the change of variables

$ v(x) = y/x $

=== Exact Equations

The ODE

$ M(x, y) + N(x, y) dv(y, x) = 0 $

is *exact* if there exists $psi$ such that

$ dv(psi, x) = M(x, y) "and" dv(psi, y) = N(x, y) $

And the solution is

$ psi(x, y) = C $

You can find $psi$ by integrating $M$ wrt x and $N$ wrt $y$ and finding a
solution which works for both.

=== Integrating Factors

When the ODE is not exact, we may be able to convert it to one by multiplying by
the integrating factor $mu(x, y)$.

$ mu(x, y) M(x, y) + mu(x, y) N(x, y) dv(y, x) = 0 $

is exact iff

$ dv((mu M), y) = dv((mu N), x) <==> M mu_y - N mu_x + (M_y - N_x) mu = 0 $

If we want an intergrating factor that's a function of $x$ alone (as a special
case), we can solve:

$ dv(mu, x) = (M_y - N_x)/N mu $

