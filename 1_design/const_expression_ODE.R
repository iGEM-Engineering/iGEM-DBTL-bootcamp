library("deSolve")
library("reshape2")
library("ggplot2")

# list of transcription rate (promoter strength) values
# https://2006.igem.org/wiki/index.php/University_of_California_Berkeley_2006
k1_values <- list(
  J23100 = 1.00,
  J23101 = 0.70,
  J23106 = 0.47,
  J23116 = 0.16,
  J23117 = 0.06)

# parameters and states taken from https://youtu.be/K0P1KVk_hDo?si=5K72owA1k8SNi9u7&t=1046
# these will need to be checked
parameters <- c(
  k1 = NA, # initialize, but values will be added from k1_values in the loop
  d1 = log(2)/3,
  k2 = 8.23,
  d2 = 0.02
)

state <- c(gene = 17, mRNA = 0, protein = 0)

# data frame to store all results from the looped ODE output
all_results <- data.frame()


# loop through each promoter strength value
for (name in names(k1_values)) {
  
  # derivative function can't take list, so pull value of k1...
  k1_value <- k1_values[[name]]
  
  # and assign promoter strength value to parameters vector
  parameters["k1"] <- k1_value

  derivative <- function(times, state, parameters) {
    with(as.list(c(state, parameters)), {
      # rate of change
      dGene <- 0
      dmRNA <- k1 * gene - d1 * mRNA
      dProtein <- k2 * mRNA - d2 * protein
      # return the rate of change
      return(list(c(dGene, dmRNA, dProtein)))
    })
  }
  
  # time points in minutes
  times <- seq(0, 180, by = 0.1)
  
  # solve the ODE
  out <- ode(y = state, times = times, func = derivative, parms = parameters)
  
  # convert ODE output to a data frame
  out_df <- as.data.frame(out)
  
  # add column and name to identify the k1 (promoter)
  out_df$k1 <- name
  
  # add the results to our data frame
  all_results <- rbind(all_results, out_df)
}

# melt the data frame for ggplot2
all_results_melt <- melt(all_results, id.vars = c("time", "k1"))

# filter out non-positive values, logarithms of zero or negative numbers are undefined
all_results_melt <- all_results_melt[all_results_melt$value > 0, ]

ggplot(all_results_melt, aes(x = time, y = value, color = variable, linetype = k1)) +
  geom_line() +
  scale_y_log10() +
  labs(title = "Gene Expression Over Time for Different Promoter Strength",
       x = "Time (min)",
       y = "Concentration (log scale)",
       color = "Component",
       linetype = "Promoter") +
  theme_minimal()

