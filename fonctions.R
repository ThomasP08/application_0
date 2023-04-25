#' fonction de stat agregee
#'
#' @param var numerique. Variable surlaquelle on souhaite faire des stat agrégé. 
#' @param fun fonction. Fonction d'agrégation.
#' @param ... dot. Les autres arguments des fonctions.
#'
#' @return numerique. Le resultat agrégé.
#' @export
#'
#' @examples
stat_agregee <- function(var, fun = "moyenne", ...) {
  if (fun == "moyenne") {
    x <- mean(var, na.rm = TRUE, ...)
  } else if (fun == "ecart-type" || fun == "sd") {
    x <- sd(var, na.rm = TRUE, ...)
  } else if (fun == "variance") {
    x <- var(var, na.rm = TRUE, ...)
  }
  return(x)
}