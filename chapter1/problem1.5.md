# Solution to problem 1.5

## a)
$x_t = s_t + w_t$

$u(x_t) = u(s_t) + u(w_t) = u(s_t)$ (the mean function is linear)

$u(st) = s_t$ because $s_t$ does not contain any random variable.

## b)
Autocovariance is calculated by removing the average first. $s_t$ is the average in each timestep so autocovariance is just:

$E[w_s * w_t] =$ {0 if $s \ne t$; $\sigma^2$ if $s = t$}
