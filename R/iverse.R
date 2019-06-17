#' use inversion method to get simulation data#
#'
#' @param n number of sample
#' @param inv_cdf inverse function of cdf
#'
#' @return data
#'
#' @examples
#' inv_cdf=function(x){-log(1-x)/10}
#' inv(10,inv_cdf)
#' @export

inv=function(n,inv_cdf){
  x=runif(n)
  return(inv_cdf(x))
}
