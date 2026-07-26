=== Central Limit Thorem

Let $X_1, ..., X_n$ be iid random variables with $EE[X_1] = mu in RR$ and
$"Var"(X_1) = sigma^2 > 0$. We define $overline(X_n) = 1/n sum_(i=1)^n X_i$. Then,

$ PP((overline(X_n) - EE[overline(X_n)])/sqrt("Var"(overline(X_n))))
-->^(n->infinity) Phi(x)  $

The CLT effectively states that for large N,

$ #h(-12em) (overline(X_n) - EE[overline(X_n)])/sqrt("Var"(overline(X_n)))) ~^"approx"
N(0, 1) $

Meaning we can estimate the sampling distribution from measurements (RVs), $X_1,
..., X_n$ using a standard normal curve!
