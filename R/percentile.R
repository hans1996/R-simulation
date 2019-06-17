#' count percentile you need about the distribution of generator
#'
#' @param gen generator
#' @param p percentile you need
#' @param n number of sample we use to count
#'
#' @return percentile
#'
#' @examples
#' gen=trans_to_gen(runif,3,4)
#' k_percentile(gen,c(10,20,30,40,50,60,70,80,90))
#' @export
k_percentile=function(gen,p,n=10000){
  p=p[p<=100&p>=0]
  p=p[order(p)]
  x=gen(n)
  a=quantile(x,0.01*p)
  return(a)}
