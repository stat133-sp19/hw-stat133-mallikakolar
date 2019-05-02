### PRIVATE CHECKER FUNCTIONS

# title : check_prob()
# description: it returns TRUE is the probability value is between 0 and 1, inclusive
# param: an integer or double
check_prob <- function(prob) {
  if (prob <= 1 & prob >= 0){
    return(TRUE)
  } else {
    stop('invalid prob value: prob has to be between 0 and 1')
  }
}

# description: it returns TRUE is the trials value is a non-negative number (>= 0)
# param: an integer or double
check_trials <- function(trials){
  if (trials >= 0){
    return(TRUE)
  } else {
    stop('invalid trials value')
  }
}

# title : check_success()
# description: it returns TRUE if all values in success are non-negative, and if success < trials
# param trials: an integer or double
# param success: a vector
check_success <- function(success, trials){
  if(any(success < 0)){
    stop('invalid success value: success cannot be less than 0')
  } else if (any(success > trials)){
    stop('success cannot be greater than trials')
  } else {
    return(TRUE)
  }
}

