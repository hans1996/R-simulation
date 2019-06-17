#' count basic satistic about the distribution of generator
#'
#' @param gen generator
#' @param n number of sample we use to count
#'
#' @return basic satistic about the distribution of generator
#'
#' @examples
#' gen=trans_to_gen(runif,3,4)
#' basic_satistic(gen)
#' @export

basic_satistic=function(gen,n=10000){
  x=gen(n)
  return(summary(x))
}
