\name{hvRcheck}
\alias{hvRCheck}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Ensures that the installed version of the hvR package is recent enough
}
\description{
Checks whether the installed version of the hvR package is either equal to or more recent than the version number provided. If not, \code{stop()} is called. 
}
\usage{
hvRcheck(version)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{version}{
The minimum version number 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
BOOLEAN indicating whether the installed package is more recent that the given model. If not, a \code{notify} message is sent and \code{stop} is called.
}
\author{
Hedderik van Rijn
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{stop}}
\code{\link{notify}}
}
\examples{
hvRcheck(0.001)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
