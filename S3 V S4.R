
s3 <- list(name = "Dr. Divya", patient = "Rajesh", age = 43, gender = "male", weight = 82)
s3 # Result


setClass("Patient",slots = list(name = "character",age = "numeric",gender = "character",weight = "numeric"))

s4 <- new("Patient", name = "Kajal", age = 38, gender = "female", weight = 65)
s4 # Result

datasets::ToothGrowth

summary_tooth_growth <- function(data, variable) {
  summary(data[[variable]])
}

summary_tooth_growth(ToothGrowth, "len")


s3 <- "tooth_growth_s3"

s3 # Result

setClass("ToothGrowthS4", slots = list(len = "numeric", supp = "factor", dose = "numeric"))

tooth_growth_s4 <- new("ToothGrowthS4", len = ToothGrowth$len, supp = as.factor(ToothGrowth$supp),dose = ToothGrowth$dose)

tooth_growth_s4 # Result


