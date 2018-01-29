# Function to translate qualifications to probabilities
JT.ProbCalc <- function(JT.vec) {
  prob <- numeric(length(JT.vec))
  for (i in 1:length(JT.vec)) {
    if (grepl("Safe", JT.vec[i])) {prob[i] <- 0.95}
    if (grepl("Like", JT.vec[i])) {prob[i] <- 0.85}
    if (grepl("Lean", JT.vec[i])) {prob[i] <- 0.75}
    if (grepl("Tilt", JT.vec[i])) {prob[i] <- 0.60}
    if (grepl("Toss", JT.vec[i])) {prob[i] <- 0.5}
  }
  return(prob)
}
