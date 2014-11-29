## Version written sometime in 2011:
colT <- function(color,alpha){
    "Returns a rgb triplet with specified alpha level based on a color name"
    
    
    ret <- NULL
    for (i in 1:length(color)) {
        col <- col2rgb(color[i])/255
        ret <- c(ret,rgb(col[1],col[2],col[3],alpha))
    }
    return(ret)
}

## Or, from: http://lamages.blogspot.nl/2013/04/how-to-change-alpha-value-of-colours-in.html
## Add an alpha value to a colour
add.alpha <- function(col, alpha=1){
  if(missing(col))
    stop("Please provide a vector of colours.")
  apply(sapply(col, col2rgb)/255, 2, 
                     function(x) 
                       rgb(x[1], x[2], x[3], alpha=alpha))  
}