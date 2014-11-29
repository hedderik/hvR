gam2se <- function(model,axes=TRUE,ylim,shadecol="darkblue",xlab=NULL,ylab=NULL,main=NULL,rug=FALSE,...) {
	if (axes) {
		plot(model,rug=rug,
			se=2,shade=TRUE,shade.col=colT(shadecol,.4),
			ylim=ylim,xlab=xlab,ylab=ylab,main=main,...)
	} else {
		plot(model,rug=rug,
			se=2,shade=TRUE,shade.col=colT(shadecol,.4),
			ylim=ylim,yaxt="n",xaxt="n",xlab="",ylab="",main="",...)
	}
	

	par(new=TRUE)
	plot(model,rug=FALSE,se=1,shade=TRUE,shade.col=colT(shadecol,.4),ylim=ylim,
		yaxt="n",xaxt="n",xlab="",ylab="",main="",
		...)
}