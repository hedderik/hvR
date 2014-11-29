\name{gam2se}
\alias{gam2se}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plots a beautified set of gam error bars
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
gam2se(model, axes = TRUE, ylim, shadecol = "darkblue", xlab = NULL, ylab = NULL, main = NULL, rug = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{
%%     ~~Describe \code{model} here~~
}
  \item{axes}{
%%     ~~Describe \code{axes} here~~
}
  \item{ylim}{
%%     ~~Describe \code{ylim} here~~
}
  \item{shadecol}{
%%     ~~Describe \code{shadecol} here~~
}
  \item{xlab}{
%%     ~~Describe \code{xlab} here~~
}
  \item{ylab}{
%%     ~~Describe \code{ylab} here~~
}
  \item{main}{
%%     ~~Describe \code{main} here~~
}
  \item{rug}{
%%     ~~Describe \code{rug} here~~
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
function (model, axes = TRUE, ylim, shadecol = "darkblue", xlab = NULL, 
    ylab = NULL, main = NULL, rug = FALSE, ...) 
{
    if (axes) {
        plot(model, rug = rug, se = 2, shade = TRUE, shade.col = colT(shadecol, 
            0.4), ylim = ylim, xlab = xlab, ylab = ylab, main = main, 
            ...)
    }
    else {
        plot(model, rug = rug, se = 2, shade = TRUE, shade.col = colT(shadecol, 
            0.4), ylim = ylim, yaxt = "n", xaxt = "n", xlab = "", 
            ylab = "", main = "", ...)
    }
    par(new = TRUE)
    plot(model, rug = FALSE, se = 1, shade = TRUE, shade.col = colT(shadecol, 
        0.4), ylim = ylim, yaxt = "n", xaxt = "n", xlab = "", 
        ylab = "", main = "", ...)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
