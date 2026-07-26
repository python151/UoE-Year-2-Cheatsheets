== Common Distributions

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

#table(
  columns: 4, align: center, inset: .75em, gutter: 0pt, stroke: 1pt+rgb("#111111"),
  [Distribution], [PMF/PDF], [$EE$], [Var],
  [Uniform on ${1, ..., n}$], [$PP(X = k) = 1/n "for" k = 1, ..., n$],
  [#$(n+1)/2$], [$(n^2 -1)/12$],
  [Bernoulli(p)], [$PP(X = 1) = p #linebreak() PP(X = 0) = 1-p$], [$p$], [$p(1-p)$],
  [Binomial(n, p)], [$mat(n; k)p^k(1-p)^(n-k) #linebreak() k in {1, ..., n}$],
  [$n p$], [$n p (1-p)$],
  [Geometric(p)], [$PP(X = k) = p(1-p)^(k-1) #linebreak() k in N$],
  [$1/p$], [$(1-p)/p^2$],
  [Poisson($lambda$)], [$e^(-lambda) lambda^k / k!$], [$lambda$], [$lambda$],
  [Negative Binomial(r, p)], [$mat(k-1; r-1)p^r (1-p)^(k-r) #linebreak() k in
  {r, r+1, ...}$], [$r/p$], [$r(1-p)/p^2$],
  [Uniform([a, b])], [$f_X = 1/(b-a) bb(1)_[a,b] (x)$], [$(a+b)/2$], [$(b-a)^2/12$],
  [Std Normal $N(0, 1)$], [$f_X = 1/sqrt(2pi) e^(-x^2/2)$], [0], [1],
  [Gaussian $N(N, sigma^2)$], [$f_X = 1/sqrt(2pi sigma^2) e^(-(x-mu)^2/(2sigma^2))$], [$mu$], [$sigma^2$],
  [Exponential($lambda$)], [$f_X = lambda e^(-lambda x), x gt.eq 0$], [$1/lambda$], [$1/lambda^2$],
)


*Uniform*: All outcomes $1, ..., n$ are equally likely.
*Bernoulli*: Success or failure, head or tail, yes or no.
*Binomial*: How many successes there are out of a fixed number $n$ of Bernoulli(p).
*Geometric*: Counts number of trials till first success.
*Possion*: Count of events / arrivals, e.g. calls in a call center, patients in
a hospital.
*Negative Binomial*: Trials until r-th success.


*Uniform*: Continuous uniforn distribution on $[a,b]$, i.e. every x is equally
likely ($bb(1)_[a,b] (x)$ just checks if $x in [a,b]$ and returns $1$ if so else $0$.
) *Std. Normal*: Normal distribution with mean 0 and variance, e.g.
standardized iid averages (*iid* = Independent and Identically Distributed.). *Gen. Normal*: General normal, usually assumed.
*Exponential*: E.g. memoryless waiting times.

$ "Two RVs are Indepdendent" #linebreak() <==> PP(X in A and Y in B) = PP(X in A) PP(Y in B) $
