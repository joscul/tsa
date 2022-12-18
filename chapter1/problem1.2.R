library(astsa)

par(mfrow = c(4,1))

s = c(rep(0, 100), 10 * exp(-(101:200 - 100)/20) * cos(2 * pi * 101:200 / 4))
x = s + rnorm(200)
plot.ts(x, main = "(a)")

s = c(rep(0, 100), 10 * exp(-(101:200 - 100)/200) * cos(2 * pi * 101:200 / 4))
x = s + rnorm(200)
plot.ts(x, main = "(b)")

x = exp(-(1:100)/20)
plot.ts(x, main = "signal modulator (a)")

x = exp(-(1:100)/200)
plot.ts(x, main = "signal modulator (b)")

# Model (a) is more similar to explosion data since amplitude of sinus wave is decreasing fast.
# Model (b) is more similar to earthquake data since amplitude of sinus wave is decreasing slow.
# signal modulators is controlling how quick the sinus wave is decreasing in model.

dev.off()
