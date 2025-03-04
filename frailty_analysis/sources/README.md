# Frailty Analysis

## Project Overview
This analysis exams the relationship between **grip strength, age, weight, and frailty** among individuals. The analysis aims to understand how physical strength correlates with health conditions.

## Folder Structure 
```
frailty_analysis/
├── raw_data/            # Stores original dataset
│   ├── frailty_data.csv
├── cleaned_data/        # Stores cleaned/processed dataset
│   ├── processed_data.csv
├── results/             # Statistical outputs
│   ├── summary_statistics.txt
│   ├── grip_strength_vs_age.png
│   ├── grip_strength_vs_health.png
├── sources/             # Stores all R scripts
│   ├── data_processing.R           # Cleans and processes raw data
│   ├── statistics_analysis.R       # Runs statistical analysis & visualization
│   ├── README.md                   # Project documentation
```
## Analysis Performance
### **1️⃣Data Preparation**
Run the data processing script:
```r
source("sources/data_processing.R")
```
- Cleans and saves **processed_data.csv** inside `cleaned_data/`.
### **2️⃣ Perform Analysis**
Run the statistical analysis script:
```r
source("sources/statistics_analysis.R")
```
- Generates:
  - **Summary statistics** (`results/summary_statistics.txt`)
  - **Grip Strength vs Age plot** (`results/grip_strength_vs_age.png`)
  - **Grip Strength vs Health plot** (`results/grip_strength_vs_health.png`)

 ## Interpretation of Results
### **1️⃣ Summary Statistics**
- The dataset includes **height, weight, age, grip strength, and frailty status**.
- Grip strength is lower among frail individuals.
### **2️⃣ Scatter Plot: Grip Strength vs Age**
- Grip strength mostly **decreases slightly with age**
- Frailty is more common in individuals with **weaker grip strength**
- **Not all** older individuals are frail
### **3️⃣ Scatter Plot: Grip Strength vs Health (Weight)**
- Weight does **not strongly predict** frailty
- Grip strength appears to be a **better predictor** of frailty than weight



    




