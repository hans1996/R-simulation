#' transform the sample function to generator,generator means only need to input n then you can get simulation data
#'
#' @param sample_function sample function
#' @param ... parameter in sample function exept n
#'
#' @return a function
#'
#'
#' @examples
#' gen=trans_to_gen(runif,3,4)
#' gen(10)
#' @export
trans_to_gen=function(sample_function,...){
  return(function(n){return(sample_function(n,...));})
}
