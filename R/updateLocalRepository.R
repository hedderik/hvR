updateLocalRepository <- function(dir=".") {
    dirs <- list.dirs(dir)
    types <- rep("source",length=length(dirs))
    types[grep("win",dirs)] <- "win.binary"
    types[grep("mac",dirs)] <- "mac.binary"
    for (i in 1:length(dirs)) {
        cat("Working on:",dirs[i],"type:",types[i],"\n")
        tools::write_PACKAGES(dirs[i], type=types[i])
    }
}