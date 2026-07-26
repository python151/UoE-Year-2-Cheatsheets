=== Conditional Probability & Bayes Theorem

$ #h(-8em) "Conditional Prob.: " PP(B | A) = PP(B inter A) / PP(A) $


$ #h(-8em) "Bayes: " PP(A | B) = PP(B | A) PP(A)/PP(B) $

$ #h(-8em) "General Bayes: "P(A_j | B) = (PP(B | A) PP(A_j))/(sum_(k=1)^n PP(B | A_k) PP(A_k))  $

$ "Two events are" #strong("independent")  <=> PP(A | B) = PP(A)PP(B)$

=== Random Variables

A *random variable (RV)* is a measureable variable on the sample space $Omega$. A random
variable is a function $X : Omega -> RR$, and is usually the results of an
experiment. If $Omega$ is every possible theoretical outcome, $X$ lets us work
with $Omega$ by taking real measurements.

A *cumulative distribution function (CDF)* is defined by $F_X (x) := PP(X lt.eq
  x)$ and makes sense for both discrete and continuous variables, but is usually
used for continuous variables.

=== Discrete and Continuous RVs

If there exists some index set $I$ that is at most countably infinite such that
$Sigma_(i in I) PP(X = x_i) = 1$ we call $X$ a discrete random variable. *The probability
mass function* then is simply $p(x_i) = PP(X = x_i)$.

$ #strong("PDF:") PP(X in B) = integral_B f_X(x) d x $
$ #strong("CDF:") P(X lt.eq B) = integral_(-infinity)^x f_X (t) d t $
