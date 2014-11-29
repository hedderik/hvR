\name{add.alpha}
\alias{add.alpha}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Adds an alpha value to a color
}
\description{
Adds an alpha value to a given color by returning a rgb triplet with specified alpha level based on a color specification. The color specification can be any color specification col2rgb can handle.
}
\usage{
add.alpha(col, alpha = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{col}{
Color specification
}
  \item{alpha}{
Alpha value, with 1 being opaque and 0 being completely translucent
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a rgb triplet with specified alpha level based on a color specification
}
\references{
\url{http://lamages.blogspot.nl/2013/04/how-to-change-alpha-value-of-colours-in.html}
}
\author{
\url{http://lamages.blogspot.nl/2013/04/how-to-change-alpha-value-of-colours-in.html}
}
\note{
Retrieved from http://lamages.blogspot.nl/2013/04/how-to-change-alpha-value-of-colours-in.html
}

\seealso{
}
\examples{

old.par <- par(mfrow=c(1,3))
plot(rnorm(500),rnorm(500),type="p",pch=19,col=add.alpha("red",1))
plot(rnorm(500),rnorm(500),type="p",pch=19,col=add.alpha("#00FF00",.5))
plot(rnorm(500),rnorm(500),type="p",pch=19,col=add.alpha("#0000FF",.1))
par(old.par)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~color }
