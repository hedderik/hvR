\name{shift}
\alias{shift}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Shifts vector up or down
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
shift(x, lag)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{lag}{
%%     ~~Describe \code{lag} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, lag) 
{
    "shifts x up or down by lag elements. Useful for: DT[,newCol := shift(oldCol,-1), by=list(byCol1,byCol2)]"
    if (lag < 0) {
        lagx <- -lag
        if (lagx >= length(x)) {
            return(rep(NA, lagx))
        }
        else {
            return(c(rep(NA, lagx), x[1:(length(x) - lagx)]))
        }
    }
    else {
        lagx <- lag
        if (lagx >= length(x)) {
            return(rep(NA, lagx))
        }
        else {
            return(c(x[(lagx + 1):length(x)], rep(NA, lagx)))
        }
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
