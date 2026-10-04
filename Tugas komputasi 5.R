#Fahri Muhammad
#3338250044

mu <- 5
peluang_mu_lebih_dari_5 <- pexp(5,rate = 1/mu , lower.tail = FALSE)
peluang_mu_lebih_dari_5

a <- 0
b <- 20
varian <- (b - a)^2 / 12
varian

mu <- 10
lambda <- 1 / mu
# Menghitung P(X < 5)
peluang_3 <- pexp(5, rate = lambda)
peluang_3


mu <- 250
sigma <- 5
proporsi_4 <- pnorm(240, mean = mu, sd = sigma)
proporsi_4
