# Note: The survey sample contains the following variables:

# survey_id     = identifier
# survey_psu    = primary sampling unit
# survey_weight = sample weight
# survey_strata = sample strata
# sba           = skilled birth attendance (0=no, 1=yes)
# wealth        = wealth quintile (1=poorest, 2=poorer, 3=middle, 4=richer, 5=richest)
# education     = education level (0=none, 1=primary, 2=secondary, 3=higher)
# area          = place of residence (1=urban, 2=rural)

# Install and load package "survey"
# install.packages("survey")
library(survey)

# Read in the survey sample data
setwd("C:/Users/nmutai/Downloads/Data_disaggregation_survey_R")
survey_sample <- read.csv("Sample_dataset_R.csv", header = TRUE)

# Label wealth, education and area
survey_sample$wealth <- factor(survey_sample$wealth, levels = c(1, 2, 3, 4, 5), labels = c("poorest", "poorer", "middle", "richer", "richest"))
survey_sample$education <- factor(survey_sample$education, levels = c(0, 1, 2, 3), labels = c("none", "primary", "secondary", "higher"))
survey_sample$area <- factor(survey_sample$area, levels = c(1, 2), labels = c("urban", "rural"))

# Declare survey design for the data set
survey_design <- svydesign(id = ~survey_psu, strata = ~survey_strata, weights = ~survey_weight, data = survey_sample)

# Calculate average sba coverage, taking into account the survey design
# Note: The "svymean" command can be used for binary variables, such as sba, which are coded 0=no and 1=yes
svymean(~sba, survey_design)

# Calculate sba coverage by wealth quintile, taking into account the survey design
svyby(~sba, ~wealth, survey_design, svymean, keep.var = TRUE)
# Calculate sba coverage by education level, taking into account the survey design
svyby(~sba, ~education, survey_design, svymean, keep.var = TRUE)
# Calculate sba coverage by place of residence, taking into account the survey design
svyby(~sba, ~area, survey_design, svymean, keep.var = TRUE)


# A trick to calculate the population size (weighted sample size)
size <- rep(1, nrow(survey_sample))
survey_sample <- cbind(survey_sample, size)

# Declare survey design again since survey_sample has been updated
survey_design <- svydesign(id = ~survey_psu, strata = ~survey_strata, weights = ~survey_weight, data = survey_sample)

svytotal(~size, survey_design)
# Calculate weighted population size by wealth quintile
svyby(~size, ~wealth, survey_design, svytotal, keep.var = TRUE)
# Calculate weighted population size by education level
svyby(~size, ~education, survey_design, svytotal, keep.var = TRUE)
# Calculate weighted population size by place of residence
svyby(~size, ~area, survey_design, svytotal, keep.var = TRUE)
