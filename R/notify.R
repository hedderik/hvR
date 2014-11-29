## Send a message to Mac OS X Notification Centre
##
## Works best if terminal-notifier is installed:
##
##   sudo gem install terminal-notifier
##
## Hedderik van Rijn, 130512
##

notify <- function(msg) {
    if (system("which terminal-notifier",TRUE) != "") {
        system(paste0("terminal-notifier -title \"R msg:\" -message \"",msg,"\""),TRUE)
    } else {
        cat(paste0(msg,"\a\n"))
        alarm()
    }
}