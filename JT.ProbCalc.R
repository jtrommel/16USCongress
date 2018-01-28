# Function to translate qualifications to probabilities
JT.ProbCalc <- function(JT.vec) {
  if (grepl("Safe", JT.vec)) {prob <- 0.95}
  if (grepl("Like", JT.vec)) {prob <- 0.85}
  if (grepl("Lean", JT.vec)) {prob <- 0.75}
  if (grepl("Toss", JT.vec)) {prob <- 0.5}
  return(prob)
}
