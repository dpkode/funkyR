#' A Fish Length-Weight Plotting Function
#'
#' Quickly plot fish length-weight data
#'
#' More details on how to make a slick fish length-weight plot
#'
#' @param fish_length If 1, uses default fish length data set, otherwise uses a vector of fish length data
#' @keywords fish, length, weight
#' @export
#' @return Plot of fish length-weight relationship.
#' @examples
#' plot_fish_LW(fish_length = 1)
#'
plot_fish_LW <- function(fish_length) {
  # plots a fictitious relationship between fish length and weight
  fish_length <- ifelse(fish_length == 1, seq(10, 500, by = 10), fish_length)
  fish_weight <- .5 * fish_length^ 2.93

  plot(fish_length, fish_weight, type = "p",
       col = "slateblue", pch = 19,
       xlab = "Total Length (mm)",
       ylab = "Weight (g)")
  title("Fish length and weight")
}

