\name{eegAxis}
\alias{eegAxis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plots an sets of axis useful for ERP plots
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
eegAxis(xlim, ylim, xlab = "", ylab = expression(paste(mu, V)), main = "", xticks = NULL, yticks = NULL, xtickSize = NULL, ytickSize = NULL, axiscol = "darkgrey", labcol = "black")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xlim}{
%%     ~~Describe \code{xlim} here~~
}
  \item{ylim}{
%%     ~~Describe \code{ylim} here~~
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
  \item{xticks}{
%%     ~~Describe \code{xticks} here~~
}
  \item{yticks}{
%%     ~~Describe \code{yticks} here~~
}
  \item{xtickSize}{
%%     ~~Describe \code{xtickSize} here~~
}
  \item{ytickSize}{
%%     ~~Describe \code{ytickSize} here~~
}
  \item{axiscol}{
%%     ~~Describe \code{axiscol} here~~
}
  \item{labcol}{
%%     ~~Describe \code{labcol} here~~
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
function (xlim, ylim, xlab = "", ylab = expression(paste(mu, 
    V)), main = "", xticks = NULL, yticks = NULL, xtickSize = NULL, 
    ytickSize = NULL, axiscol = "darkgrey", labcol = "black") 
{
    if (length(xlim) > 2) {
        xlim <- range(xlim)
    }
    if (length(ylim) > 2) {
        ylim <- range(ylim)
    }
    if (is.null(xtickSize)) {
        xtickSize <- abs(diff(ylim)/100)
    }
    if (is.null(ytickSize)) {
        ytickSize <- abs(diff(xlim)/200)
    }
    plot(0, 0, type = "n", xaxt = "n", xlab = "", ylab = "", 
        yaxt = "n", axes = F, xlim = xlim, ylim = ylim, main = main)
    lines(xlim, c(0, 0), col = axiscol)
    if (is.null(xticks)) {
        xticks <- axTicks(1)
    }
    for (x in xticks) {
        lines(c(x, x), c(-1, 1) * xtickSize, col = axiscol)
    }
    if (is.null(yticks)) {
        yticks <- axTicks(2)
    }
    lines(c(0, 0), c(max(yticks), min(yticks)), col = axiscol)
    for (y in yticks) {
        lines(c(-1, 1) * ytickSize, c(y, y), col = axiscol)
        if (y == 0) {
            yadj = -0.2
        }
        else {
            yadj = y
        }
        text(0.6 * -1 * ytickSize, yadj, cex = 0.8, col = labcol, 
            pos = 2, labels = y, xpd = TRUE)
    }
    text(0, max(yticks) * 1.1, ylab, col = labcol, xpd = TRUE)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
