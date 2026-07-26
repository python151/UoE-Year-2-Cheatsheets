=== Max of Ind. RVs

Let $X_i, i in {1, ..., n}$ be iid RVs with cdf $F_X$. Then,

$ #h(-11em) F_(max_i X_i) (x) = F_X (x)^n $

=== Min of Ind. RVs

Let $X_i, i in {1, ..., n}$ be iid RVs with cdf $F_X$. Then,

$ #h(-10em) F_(min_i X_i) (x) = 1 - (1 - F_X (x))^n $

=== Sum of RVs

$ #h(-11em) p_(X+Y) (k) = sum_y p_X (k - y) p_Y (y) $
$ #h(-11em) f_(X+Y) (z) = integral_RR f_X (z-y) f_Y (y) d y $

=== Sum of Normal RVs

$ X + Y ~ N(mu_X + mu_Y, sigma_X^2 + sigma_Y^2) $

=== Sums of Distributions

$ X ~ "Pois"(lambda_X), Y ~ "Pois"(lambda_Y) ==> X+Y ~
"Pois"(lambda_X + lambda_Y) $
$ X ~ "Binom"(n_X, p), Y ~ "Binom"(n_Y, p) ==> X+Y ~ "Binom"(n_X + n_Y, p) $
$ X ~ "Exp"(lambda), Y ~ "Exp"(lambda) ==> X+Y ~ "Gamma"(2, lambda) $
$ X ~ "Gamma"(alpha, lambda), Y ~ "Gamma"(beta, lambda) ==> X+Y ~ "Gamma"(alpha + beta, lambda) $
$ X ~ "Exp"(lambda_X), Y ~ "Exp"(lambda_Y) ==> min{X, Y} ~ "Exp"(lambda_X + lambda_Y)  $
