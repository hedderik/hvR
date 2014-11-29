\name{blues}
\alias{blues}
\title{
Creates a vector of n different hues of blue
}
\description{
Creates a vector of n different hues of blue at equidistant intensities
}
\usage{
blues(n)
}
\arguments{
  \item{n}{Number of hues of blue to return. 

}
}
\details{
If the number of hues of blue is smaller than 9, it's returning the n darkest hues of blue from a call to \code{brewer.pal(9,"Blues")}. If the number of requested hues of blue is larger than 9, colorRampPalette is used based on \code{brewer.pal(9,"Blues")}
}
\value{
A vector of n hues of blue
}
\author{
Hedderik van Rijn
}
\seealso{
\code{\link{reds}}
}
\examples{
plot(1:4,pch=19,xlim=c(0,5),cex=3,col=blues(4))
}

\keyword{ color }
