\name{reds}
\alias{reds}
\title{
Creates a vector of n different hues of red
}
\description{
Creates a vector of n different hues of red at equidistant intensities
}
\usage{
reds(n)
}
\arguments{
  \item{n}{Number of hues of red to return. 

}
}
\details{
If the requested number of hues of red is smaller than 9, it's returning the n darkest hues of red from a call to \code{brewer.pal(9,"Reds")}. If the number of requested hues of blue is larger than 9, colorRampPalette is used based on \code{brewer.pal(9,"Reds")}
}
\value{
A vector of n hues of red
}
\author{
Hedderik van Rijn
}
\seealso{
\code{\link{blues}}
}
\examples{
plot(1:4,pch=19,xlim=c(0,5),cex=3,col=reds(4))
}

\keyword{ color }
