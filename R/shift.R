
shift <- function(x,lag) {
    "shifts x up or down by lag elements. Useful for: DT[,newCol := shift(oldCol,-1), by=list(byCol1,byCol2)]"
    
    if (lag < 0) {
        lagx <- -lag
        if (lagx >= length(x)) {
            return(rep(NA,lagx))
        } else {
            return(c(rep(NA,lagx), x[1:(length(x)-lagx)]))
        }
    } else {
        lagx <- lag
        if (lagx >= length(x)) {
            return(rep(NA,lagx))
        } else {
            return(c(x[(lagx+1):length(x)],rep(NA,lagx)))
        }
    }
}
