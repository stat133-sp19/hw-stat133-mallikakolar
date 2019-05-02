## MAIN FUNCTIONS

#' @title bin_choose
#' @description calculates the number of combinations in which k successes can occur in n trials.
#' @param int integer n trials
#' @param int integer k successes
#' @return combination value
#' @export
#' @examples
#' bin_choose(n = 5, k = 2)
#'
#' bin_choose(5, 0)
#'
#' bin_choose(5, 1:3)
bin_choose <- function(n, k){
  if (k > n){
    stop('k cannot be greater than n')
  }
  num <- factorial(n)
  denom <- factorial(k) * factorial(n-k)
  choose <- num/denom
  return(choose)
}

#' @title bin_probability
#' @description calculated binomial probability of having k successes in n trials
#' @param int integer success
#' @param int integer trials
#' @param int integer prob
#' @return binomial probability
#' @export
#' @examples
#' bin_probability(success = 2, trials = 5, prob = 0.5)
#'
#' bin_probability(success = 0:2, trials = 5, prob = 0.5)
#'
#' bin_probability(success = 55, trials = 100, prob = 0.45)
bin_probability <- function(success, trials, prob){
  if (check_trials(trials) != TRUE){
    stop('invalid trials value')
  }
  if (check_prob(prob) != TRUE){
    stop('invalid probability value')
  }
  if (check_success(success, trials) != TRUE){
    stop('invalid success value')
  }
  probability <- bin_choose(trials, success) * (prob^success) * ((1-prob)^(trials-success))
  return(probability)
}

#' @title bin_distribution
#' @description returns a data frame with the probability distribution, columns are successes and probability
#' @param int integer trials
#' @param int integer prob
#' @return dataframe with bindis class
#' @export
#' @examples
#' bin_distribution(trials = 5, prob = 0.5)
bin_distribution <- function(trials, prob){
  prob_vec <- bin_probability(success = 0:trials, trials = trials, prob = prob)
  prob_df <- data.frame(success = c(0:trials), probability = prob_vec)
  class(prob_df) <- c("bindis", "data.frame")
  return(prob_df)
}

#' @export
plot.bindis <- function(dat){
  barplot(dat$probability, ylab = 'probability', xlab = 'successes')
}

#' @title bin_cumulative
#' @description returns a dataframe with the probability distribution and the cumulative probabilities
#' @param int integer trials
#' @param int integer prob
#' @return dataframe with bincum class
#' @export
#' @examples
#' bin_cumulative(trials = 5, prob = 0.5)
bin_cumulative <- function(trials, prob){
  test <- bin_probability(success = 0:trials, trials = trials, prob = prob)
  cum_sum <- cumsum(test)
  dframe <- data.frame(success = c(0:trials), probability = test, cumulative = cum_sum)
  class(dframe) <- c("bincum", "data.frame")
  return(dframe)
}

#' @export
plot.bincum <- function(dat){
  plot(dat$cumulative, ylab = 'cumulative', xlab = 'successes')
  lines(dat$cumulative)
}

#' @title bin_variable
#' @description returns an object with a list of named elements
#' @param int integer trials
#' @param int integer prob
#' @return binomial random variable object
#' @export
#' @examples
#' bin_variable(trials = 10, prob = 0.3)
bin_variable <- function(trials, prob){
  check_trials(trials = trials)
  check_prob(prob = prob)
  bin_list <- list(trials = trials, prob = prob)
  class(bin_list) <- "binvar"
  return(bin_list)
}

#' @export
print.binvar <- function(dat){
  cat("\"Binomial Variable\"\n\n")
  cat("Parameters", "\n", append = TRUE)
  cat("- number of trials:", dat$trials, "\n", append=TRUE)
  cat("- prob of success:", dat$prob, append=TRUE)
}

#' @export
summary.binvar <- function(dat){
  cat("\"Summary Binomial\"\n\n")
  cat("Parameters", "\n", append = TRUE)
  cat("- number of trials:", dat$trials, "\n", append=TRUE)
  cat("- prob of success:", dat$prob, append=TRUE)
  cat("\n\n", append=TRUE)
  cat("Measures", "\n", append = TRUE)
  cat("- mean:", aux_mean(dat$trials, dat$prob), "\n", append=TRUE)
  cat("- variance:", aux_variance(dat$trials, dat$prob), "\n", append=TRUE)
  cat("- mode:", aux_mode(dat$trials, dat$prob), "\n",append=TRUE)
  cat("- skewness:", aux_skewness(dat$trials, dat$prob), "\n", append=TRUE)
  cat("- kurtosis:", aux_kurtosis(dat$trials, dat$prob), "\n", append=TRUE)
}

#' @title bin_mean
#' @description checks probability and trials, and then calculates the mean
#' @param int integer trials
#' @param int integer prob
#' @return binomial mean
#' @export
#' @examples
#' bin_mean(10, 0.3)
bin_mean <- function(trials, prob){
  check_trials(trials = trials)
  check_prob(prob = prob)
  return(aux_mean(trials, prob))
}

#' @title bin_variance
#' @description checks probability and trials, and then calculates the variance
#' @param int integer trials
#' @param int integer prob
#' @return binomial variance
#' @export
#' @examples
#' bin_variance(10, 0.3)
bin_variance <- function(trials, prob){
  check_trials(trials = trials)
  check_prob(prob = prob)
  return(aux_variance(trials, prob))
}

#' @title bin_mode
#' @description checks probability and trials, and then calculates the mode
#' @param int integer trials
#' @param int integer prob
#' @return binomial mode
#' @export
#' @examples
#' bin_mode(10, 0.3)
bin_mode <- function(trials, prob){
  check_trials(trials = trials)
  check_prob(prob = prob)
  return(aux_mode(trials, prob))
}

#' @title bin_skewness
#' @description checks probability and trials, and then calculates the skewness
#' @param int integer trials
#' @param int integer prob
#' @return binomial skewness
#' @export
#' @examples
#' bin_skewness(10, 0.3)
bin_skewness <- function(trials, prob){
  check_trials(trials = trials)
  check_prob(prob = prob)
  return(aux_skewness(trials, prob))
}

#' @title bin_kurtosis
#' @description checks probability and trials, and then calculates the kurtosis
#' @param int integer trials
#' @param int integer prob
#' @return binomial kurtosis
#' @export
#' @examples
#' bin_kurtosis(10, 0.3)
bin_kurtosis <- function(trials, prob){
  check_trials(trials = trials)
  check_prob(prob = prob)
  return(aux_kurtosis(trials, prob))
}

