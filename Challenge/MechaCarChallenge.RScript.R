# Use linear regression to test multiple variables

# Load in the mpg dataset to a table.
mecha_table <- read.csv(file="MechaCar_mpg.csv",stringsAsFactors = F)

# Create linear model for multiple variables
mecha_lm <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mecha_table)
summary(mecha_lm)

# Load in the suspension data to a table.
suspension_data <- read.csv("Suspension_Coil.csv",stringsAsFactors = F)

# Summarize the suspension data.
suspension_summary <- suspension_data %>%
  summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Perform a t-test on the suspension data to see if the PSI results are statistically different than the population.
t.test(suspension_data$PSI,mu=1500)
