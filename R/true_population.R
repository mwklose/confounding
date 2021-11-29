make_rct <- function(n=1000, arms=2, ...){
  if(n <= 0){
    stop("RCT must have at least 1 participant")
  }

  fmt <- paste("RCT%0", floor(log10(n)) + 1, "d", sep="")
  ids <- sprintf(fmt, 1:n)
  rct_pop <- data.frame(ids)
  return(rct_pop)
}
