## a)
It is not stationary since the mean function $u_x(t) = \beta_1 + \beta_2t$ depends on $t$

## b)
$y_t = x_t - x_{t-1} = \beta_1 + \beta_2t + w_t - (\beta_1 + \beta_2(t - 1) + w_t) = \beta_2t - \beta_2t + \beta_2 = \beta_2$

$y_t$ is a really boring constant time serie which is obviously stationary in every sense.

## c)
$$v_t = \frac{1}{2q + 1}\sum_{j=-q}^qx_{t-j}$$

We can use the fact that the sum equals $q(x_{t+q} + x_{t-q}) + x_t$ it is the same logic as when asked to sum the integers $0-100$ by taking $50*(0 + 100) + 50$

The rest follows from some algebra:

$$\frac{1}{2q + 1}\sum_{j=-q}^qx_{t-j} = \frac{1}{2q + 1}(q(\beta_1 + \beta_2(t+q) + \beta_1 + \beta_2(t-q)) + \beta_1 + \beta_2t)$$

$$ = \frac{1}{2q + 1}(\beta_1q + \beta_2tq + \beta_2q^2 + \beta_1q + \beta_2tq - \beta_2q^2 + \beta_1 + \beta_2t)$$

$$ = \frac{1}{2q + 1}(2\beta_1q + \beta_1 + 2\beta_2tq + \beta_2t)$$

$$ = \frac{1}{2q + 1}(\beta_1(2q + 1) + \beta_2t(2q + 1))$$

$$ = \beta_1 + \beta_2t$$

Same here as in the previous exercise. If we take away the average we are only left with $w_t$

$cov(w_t, w_t) = \sigma^2$

$cov(w_s, w_t) = 0$ if $s \ne t$
