library(astsa)

# y(s, t)
# = E[(xs - us)(xt - ut)]
# = E[xs*xt - xs*ut - us*xt + us*ut]
# = E[xs*xt] - E[xs]*ut - E[xt]*us + us*ut
# = E[xs*xt] - us*ut - us*ut + us*ut
# = E[xs*xt] - us*ut

# We just use the fact that expected value is linear and E[x] = ux

# In words: it is the same to normalize the two random variables before multiplying them and then measure the expected value
# as first multiplying them and measure the expected value and then normalize by the multiplication of the expected values.
