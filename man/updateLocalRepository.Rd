\name{updateLocalRepository}
\alias{updateLocalRepository}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calls tools::write_PACKAGES on all subdirectories of a given directory}

\description{
To create a local repository, index files need to be created per directory. This function calls tools::write_PACKAGES on each subdirectory, and tries to figure out whether this is a windows or macosx binary directory, or a source directory.
}
\usage{
updateLocalRepository(dir = ".")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dir}{Directory from which to start searching}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{None}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Hedderik van Rijn
}
\note{
After calling this function, the repository can be uploaded to a webserver.
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
function (dir = ".") 
{
    dirs <- list.dirs(dir)
    types <- rep("source", length = length(dirs))
    types[grep("win", x) - 1] <- "win.binary"
    types[grep("mac", x) - 1] <- "mac.binary"
    for (i in 1:length(dirs)) {
        cat("Working on:", dirs[i], "type:", types[i], "\n")
        tools::write_PACKAGES(dirs[i], type = types[i])
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
