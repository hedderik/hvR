extractNumbers <- function(l) {
    ## Taken from: http://stackoverflow.com/questions/17009628/extracting-numbers-from-string-in-r
    s <- strsplit(l, "[^[:digit:]]")
    
    ## convert strings to numeric ("" become NA)
    solution <- as.numeric(unlist(s))
    
    ## remove NAs:
    solution <- solution[!is.na(solution)]
    if (length(solution)==0) {
        solution <- NULL
    }
    solution
}