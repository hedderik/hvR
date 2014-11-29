\name{labelrange}
\alias{labelrange}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plots a horizontal line with a label
}
\description{
Main use of function is to denote which part of the plot represents which part of an experimental trial
}
\usage{
labelrange(y, min, max, tickHeigth, label, col = "black", text.col = "black", bg.col = "white", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
%%     ~~Describe \code{y} here~~
}
  \item{min}{
%%     ~~Describe \code{min} here~~
}
  \item{max}{
%%     ~~Describe \code{max} here~~
}
  \item{tickHeigth}{
%%     ~~Describe \code{tickHeigth} here~~
}
  \item{label}{
%%     ~~Describe \code{label} here~~
}
  \item{col}{
%%     ~~Describe \code{col} here~~
}
  \item{text.col}{
%%     ~~Describe \code{text.col} here~~
}
  \item{bg.col}{
%%     ~~Describe \code{bg.col} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
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
function (y, min, max, tickHeigth, label, col = "black", text.col = "black", 
    bg.col = "white", ...) 
{
    "Plots a horizontal line with a label, useful for denoting which part of the plot represents which part of an experimental trial"
    lines(c(min, max), c(y, y), col = col)
    lines(c(min, min), y + c(-tickHeigth, tickHeigth), col = col)
    lines(c(max, max), y + c(-tickHeigth, tickHeigth), col = col)
    boxed.labels((min + max)/2, y, label, bg = bg.col, border = FALSE, 
        col = text.col, ...)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
