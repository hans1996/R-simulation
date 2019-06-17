#' get density plot about the distribution of generator
#'
#' @param gen generator
#' @param n number of sample we use to plot
#'
#' @return density plot
#'
#' @examples
#' gen=trans_to_gen(runif,3,4)
#' density_plot(gen)
#' @export
density_plot=function(gen,n=10000){
  sample=gen(n)
  plot(density(sample))
}
