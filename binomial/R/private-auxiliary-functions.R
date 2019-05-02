### PRIVATE AUXILIARY FUNCTIONS

# title : aux_mean()
# description: returns the mean
# param trials: an integer
# param prob: an integer
aux_mean <- function(trials, prob){
  mean <- trials * prob
  return(mean)
}

# title : aux_variance()
# description: returns the variance
# param trials: an integer
# param prob: an integer
aux_variance <- function(trials, prob){
  variance <- (trials * prob) * (1 - prob)
  return(variance)
}

# title : aux_mode()
# description: returns the mode
# param trials: an integer
# param prob: an integer
aux_mode <- function(trials, prob){
  value <- (trials * prob) + prob
  floor_val <- floor(value)
  if ((trials %% 2) == 0){
    return(floor_val)
  } else {
    return(c(floor_val, floor_val - 1))
  }
}

# title : aux_skewness()
# description: returns the skewness
# param trials: an integer
# param prob: an integer
aux_skewness <- function(trials, prob){
  num <- 1 - (2*prob)
  denom <- sqrt(trials * prob * (1-prob))
  skewness <- num / denom
  return(skewness)
}

# title : aux_kurtosis()
# description: returns the kurtosis
# param trials: an integer
# param prob: an integer
aux_kurtosis <- function(trials, prob){
  num <- 1 - (6 * prob * (1-prob))
  denom <- trials * prob * (1-prob)
  kurtosis <- num/denom
  return(kurtosis)
}

