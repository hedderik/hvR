\name{extractNumbers}
\alias{extractNumbers}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Extracts all numeric values from a string
}
\description{
Returns a vector containing the numbers found in a string. If a string contains multiple sequences of numbers (e.g., "aa12bb23") the function will return a vector containing 12 and 23.
}
\usage{
extractNumbers(string)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{string}{The string in which the function needs to search for numbers
%%     ~~Describe \code{x} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A vector containing the numbers found in the string, or NULL if no numbers were found.
}
\references{
Adapted from: http://stackoverflow.com/questions/17009628/extracting-numbers-from-string-in-r
}
\author{
Hedderik van Rijn
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
extractNumbers("aa12bb23")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
