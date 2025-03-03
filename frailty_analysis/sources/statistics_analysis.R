# Load libraries
library(ggplot2)
library(dplyr)

# Load processed data
processed_data <- read.csv("cleaned_data/processed_data.csv")

# Summary statistics
summary_stats <- processed_data %>%
  summarise(
    mean_strength = mean(Grip_Strength, na.rm = TRUE),
    median_strength = median(Grip_Strength, na.rm = TRUE),
    correlation_age_strength = cor(Age, Grip_Strength, use = "complete.obs")
  )
summary_stats
# there's a slightly weak correlation relationship between age and grip strength. 

# Save summary statistics in the results folder
write.csv(summary_stats, "results/summary_statistics.txt", row.names = FALSE)

# Create a scatter plot of Grip Strength vs Age
age_strength_plot <- ggplot(processed_data, aes(x = Age, y = Grip_Strength, color = Frailty)) +
  geom_point() +
  labs(title = "Grip Strength vs Age")

age_strength_plot
#Grip strength mostly decreases slightly with age
#Frailty is more common in individuals with weaker grip strength
#Not all older individuals are frail
# Save the plot
ggsave("results/grip_strength_vs_age.png", age_strength_plot)

# Create a scatter plot of grip strength vs health (weight)
health_strength_plot <- ggplot(processed_data, aes(x = Grip_Strength, y = Weight, color = Frailty)) +
  geom_point() +
  labs(title = "Grip Strength vs Health Relationship")
health_strength_plot
#Weight does not strongly predict frailty
#Grip strength appears to be a better predictor of frailty than weight
# Save the health plot
ggsave("results/grip_strength_vs_health.png", health_strength_plot)

source("sources/statistics_analysis.R")
list.files("results/")






