# Load libraries
library(dplyr)

# Create the data frame
frailty_data <- data.frame(
  Height = c(65.8, 71.5, 69.4, 68.2, 67.8, 68.7, 69.8, 70.1, 67.9, 66.8),
  Weight = c(112, 136, 153, 142, 144, 123, 141, 136, 112, 120),
  Age = c(30, 19, 45, 22, 29, 50, 51, 23, 17, 39),
  Grip_Strength = c(30, 31, 29, 28, 24, 26, 22, 20, 19, 31),
  Frailty = c("N", "N", "N", "Y", "Y", "N", "Y", "Y", "N", "N")  
)

# Save the dataset inside the raw_data/ folder
write.csv(frailty_data, "raw_data/frailty_data.csv", row.names = FALSE)

# Display the data frame
print(frailty_data)

list.files("raw_data/")
read.csv("raw_data/frailty_data.csv")

source("sources/data_processing.R")

# Process/clean data 
# Convert Frailty to a categorical variable 
frailty_data$Frailty <- as.factor(frailty_data$Frailty)

# Ensure cleaned_data/ directory exists
if (!dir.exists("cleaned_data")) {
  dir.create("cleaned_data")
}
# Save the processed dataset in the cleaned_data folder
write.csv(processed_data, "cleaned_data/processed_data.csv", row.names = FALSE)

# Display summary of cleaned data
print(summary(processed_data))

source("sources/data_processing.R")











