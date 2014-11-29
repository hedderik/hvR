
blues <- function(n) {
    "Select n different colors, emphasizing the darker colors when asking for < 9 colors"
    if (n < 9) {
        brewer.pal(9,"Blues")[(10-n):9]
    } else {
        colorRampPalette(brewer.pal(9,"Blues"))(n)
    }
}