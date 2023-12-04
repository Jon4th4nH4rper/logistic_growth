# Code for generating a graph showing the difference between exponential and logistic growth of E. coli
# This code is using data from experiment2.csv

N0 <- 1917 # Starting population of bacteria
r <- 0.0303057 # Intrinsic growth rate
K <- 1.000e+09 # Carrying capacity


logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

exponential_fun <- function(t) {
  
  N <- (N0*exp(r*t))
  
  return(N)
  
}

log_plot <- ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red")


exp_plot <- ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=exponential_fun, colour="red")


ggplot(aes(t, N), data = growth_data) +
  geom_function(fun = exponential_fun, aes(color = "Exponential Growth"), size = 0.5) +
  geom_function(fun = logistic_fun, aes(color = "Logistic Growth"), size = 0.5) +
  xlim(300, 600) +
  ylim(0, 2e+09) +
  labs(x = "time (t)", y = "population size (N)", title = "A graph to show the difference in exponential and logistic growth of E. coli") +
  scale_color_manual(values = c("Exponential Growth" = "red", "Logistic Growth" = "blue")) +
  theme_bw() +
  theme(legend.position = "bottom")
