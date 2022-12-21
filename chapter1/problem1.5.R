
library(astsa)

# xt = st + wt
# u(xt) = u(st) + u(wt) = u(st) (the mean function is linear)
# u(st) = 0 for t = 1...100
# u(st) = st for t = 101...200
# so basically u(st) = st

par(mfrow = c(2,1))

ust = c(rep(0, 100), 10 * exp(-((101:200) - 100)/20) * cos(2 * pi * (101:200) / 4))
plot.ts(ust)

ust2 = c(rep(0, 100), 10 * exp(-((101:200) - 100)/200) * cos(2 * pi * (101:200) / 4))
plot.ts(ust2)

# autocovariance functions
# autocovariance is calculated by removing the average first. st is the average in each timestep so autocovariance is just
# E[ws * wt] = {0 if s != t; sigma^2 if s == t}

dev.off();
