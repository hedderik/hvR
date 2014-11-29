
labelrange <- function(y,min,max,tickHeigth,label,col="black",text.col="black",bg.col="white",...) {
    "Plots a horizontal line with a label, useful for denoting which part of the plot represents which part of an experimental trial"
    lines(c(min,max),c(y,y),col=col)
    lines(c(min,min),y+c(-tickHeigth,tickHeigth),col=col)
    lines(c(max,max),y+c(-tickHeigth,tickHeigth),col=col)
    boxed.labels((min+max)/2, y, label, bg=bg.col,border=FALSE,col=text.col,...)
}