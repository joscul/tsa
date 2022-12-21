library(astsa)

# (a)
samples = 100
extra = 50
w = rnorm(samples + extra, 0, 1)
x = filter(w, filter = c(1, -0.9), method="recursive")[-(1:extra)]
ma = filter(x, filter = c(1/4, 1/4, 1/4, 1/4), sides = 1)
plot.ts(x, main="(a) autoregression")
lines(ma, lty=2)

# x is oscillating since it is negatively correlated to the previous value. So if x_n-1 is high it is high probability that x_n will be low.
# the amplitude of the moving average line is lower and the oscillation is shifted to the right.

# (b)
x = cos(2 * pi * 1:samples / 4)
ma = filter(x, filter = c(1/4, 1/4, 1/4, 1/4), sides = 1)
plot.ts(x, main="(b) cosinus wave")
lines(ma, lty=2)

# (c)
x = cos(2 * pi * 1:samples / 4) + rnorm(samples, 0, 1)
ma = filter(x, filter = c(1/4, 1/4, 1/4, 1/4), sides = 1)
plot.ts(x, main="(c) cosinus wave with noise")
lines(ma, lty=2)

# (d)
# The moving average is always making the line smoother, decreasing the variance. In (b) we have the extreme case where the moving average always
# evaluates to zero.

dev.off()
