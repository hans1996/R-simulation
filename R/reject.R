#' use rejection method to get simulation data
#'
#' @param n number of sample
#' @param pdf pdf function
#' @param a range of data
#' @param b range of data
#' @param k bound of pdf
#'
#' @return data
#'
#' @examples
#' pdf <- function(x){
#' if(x>0&x<1){return(x)}
#' if(x>=1&x<2){return(2-x)}
#' return(0)
#' }
#' rej(10,pdf,0,2,2)
#' @export

rej <- function(n,pdf,a,b,k){
  ans=c()
  while(length(ans)<n){
    x=runif(1,a,b)
    y=runif(1,0,k)
    if(pdf(x)>y){ans=append(ans,x)}
  }
  return(ans)
}







