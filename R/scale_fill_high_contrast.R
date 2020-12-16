#' Define color fill for a bar chart.
#'
#' Description goes here.
#'
#' @param foreground_color fill color for bar (\code{"white"})
#'
#' @return Vector
#'
#' @examples
#' scale_fill_high_contrast(foreground_color = "white")
#'
#' @importFrom ggplot2 scale_fill_manual
#'
#' @export
scale_fill_high_contrast = function(foreground_color = "white") {
  if (foreground_color == "white") {
    scale_fill_manual(values = c(
      foreground_color,
      darken(foreground_color, amount = 0.2),
      darken(foreground_color, amount = 0.4),
      darken(foreground_color, amount = 0.6)
    ))
  } else {
    scale_fill_manual(values = c(
      foreground_color,
      lighten(foreground_color, amount = 0.3),
      lighten(foreground_color, amount = 0.6),
      lighten(foreground_color, amount = 0.9)
    ))
  }
}
