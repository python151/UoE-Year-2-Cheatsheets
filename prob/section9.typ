=== Conditional Expectation

Let $X$ be a discrete RV and A an event with $PP(A) > 0$, then

$ EE[X | A] = sum_k x_k PP(X = x_k | A) $

$ "Total Prob. for Exp." EE[X] = EE[X|A_1] PP(A_1) + ... + EE[X|A_n]
PP(A_n)  $

$ "Prop 9.3" A = n "is divisible by k", B = n "is divisible by l". #linebreak() A "and" B
"are independent" <==> gcd(l, k) = 1 $

=== Chebyshev's Inequality

Let $X$ be an RV with $E[X] = mu$ and finite variance.

$ PP(|X - mu| gt.eq a) lt.eq "Var"(X)/a^2 $

=== Weak Law of Large Numbers

Let $(X_n)_(n in NN)$ be a sequence of iid with finite variance. For any
$a>0$,

$ lim_(n->infinity) PP(abs(1/n sum_(i=1)^n X_i - mu) gt.eq a) = 0 $
