#Fahri muhammad
#3338250044
#Tugas komputasi 4

# Nomor 1
lambda <- 3
x <-  0:10
poiss <- 1 - ppois(4, lambda)
poiss

# Nomor 2
N <- 100
K <- 20        
n_draw <- 10  

k_domain <- seq(from = max(0, n + K - N), to = min(n, K))

# Menghitung PMF P(X = k)
pmf_hyper <- dhyper(k_domain, m = K, n = N - K, k = n)

# Menampilkan tabel distribusi peluang
tabel_hiper <- data.frame(
  k_sukses = k_domain, 
  Peluang = round(pmf_hyper, 5)
)
print(tabel_hiper)

# Menghitung Ekspektasi dan Varian Teoretis
exp_hyper <- n * (K / N)
var_hyper <- n * (K / N) * (1 - K / N) * ((N - n) / (N - 1))
cat("\nEkspektasi E[X] :", exp_hyper, "\n")
cat("Varian Var(X)   :", var_hyper, "\n")

# Nomor 3
set.seed(2025)        
n_binom   <- 15
p_binom   <- 0.4
n_trials  <- 1000

sim <- rbinom(n_trials, size = n_binom, prob = p_binom)

k_range      <- 0:n_binom
sim_freq     <- sapply(k_range, function(k) mean(sim == k))
theo_pmf     <- dbinom(k_range, size = n_binom, prob = p_binom)

df_compare <- data.frame(
  k          = k_range,
  Simulasi   = round(sim_freq, 4),
  Teoretis   = round(theo_pmf, 4)
)
print(df_compare)

# Plot histogram simulasi vs PMF teoretis
barplot(rbind(sim_freq, theo_pmf),
        beside = TRUE,
        names.arg = k_range,
        col = c("steelblue", "tomato"),
        legend.text = c("simulasi", "Teoretis"),
        args.legend = list(x = "topright"),
        xlab = "Jumlah sukses (k)",
        ylab = "Proporsi / Probabilitas",
        main = "Simulasi vs PMF Teoretis: Binomial(n=15, p=0.4)")

