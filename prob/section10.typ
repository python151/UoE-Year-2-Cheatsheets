=== Moment Generating Functions

Let $X$ be an RV. Then, for $n in NN$ we call $EE[X^n]$ the *nth-moment* of $X$. If $EE[X]$ is finite, then we further call $EE[(X-EE[X])^n]$ the *centered nth-moment*. This means the Expectation is the first moment and the Variance is the second centered moment.

The MGF of X, denoted by $M_X$ is

$ M_X (t) = EE[e^(t X)] = EE[sum_(n=0)^infinity (t X)^n / n!] $

$ "Cont. Form" M_X (t) = integral_(-infinity)^infinity e^(t x) f_X (x) d x $
$ "Disc. Form" M_X (t) = sum_x e^(t x) p_X (x) $

*To find the nth-moment*, differentiate the MGF n-times, and evaluate at 0.

If $X_1, X_2, ..., X_n$  are independent RVs, then

$ M_(X_1 + ... + X_n) (t) = M_(X_1) (t) dot M_(X_2) (t) dot ... dot M_(X_n) (t) $

#set table(
  stroke: none,
  gutter: 0.1em,
  fill: (x, y) =>
    if x == 0 or y == 0 { rgb("#111111") },
  inset: (right: 1.5em),
)

#show table.cell: it => {
  if it.x == 0 or it.y == 0 {
    set text(white)
    strong(it)
  } else if it.body == [] {
    // Replace empty cells with 'N/A'
    pad(..it.inset)[_N/A_]
  } else {
    it
  }
}

#align(center)[
  #table(
    columns: 2, align: center, inset: .75em, gutter: 0pt, stroke: 1pt+rgb("#111111"),
    [Distribution], [MGF],
    [Uniform on ${1, ..., n}$], [$(e^t (e^(n t) - 1))/(n(e^t - 1))$],
    [Bernoulli(p)], [$1 - p - p e^t$],
    [Binomial(n, p)], [$(1 - p + p e^t)^n$],
    [Geometric(p)],  [$(p e^t)/(1-(1-p)e^t)$],
    [Poisson($lambda$)], [$exp(lambda (e^t -1))$],
    [Negative Binomial(r, p)], [$((p e^t)/(1-(1-p)e^t))^r$],
    [Uniform([a, b])], [$(e^(t b) - e^(t a))/(t(b-a))$],
    [Std Normal $N(0, 1)$], [$exp(t^2/2)$],
    [Gaussian $N(N, sigma^2)$], [$exp(mu t + sigma^2 t^2/2)$],
    [Exponential($lambda$)], [$lambda / (lambda - t)$],
  )
]

=== Brownian Motion

A *random walk* is a stochastic process $\{S_n : n in NN_0\}$ defined by $S_0 =
0$ and $S_n = sum_(i=1)^n X_i$, where $(X_i)_(i gt.eq 1)$ are RVs.

A *brownian motion* is a stochatic process, $\{B(t)\}_(t in [0, infinity])$,
satisfying:
- $W(0) = 0$ (starts at 0)
- $W(t)$ has independent increments
- For $0 lt.eq s < t$, the increment $W(t)-W(s)$ is $N(0, t-s)$ distributed.
- $W(t)$ has continous paths (with probability $1$).

==== Properties

- BM has almost surely continuous paths, but these paths are non-differentiable everywhere.
- BM is self-similar: for any constant $c > 0, (W (c t))_(t≥0)$ has the same
distribution as $(sqrt(c) dot W (t ))_(t ≥0).$
- BM is a markov process, so the future depends only on the present.


