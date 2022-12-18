
library(astsa)

# Explosion amplitude is decreasing faster than earthquake
# Earthquake has lower frequency than explosion.

plot.ts(EQ5, main="Earthquake in black and Explosion in blue")
lines(EXP6, col=4, lty=2)

dev.off()
