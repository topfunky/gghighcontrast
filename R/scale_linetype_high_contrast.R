#' Define linetypes for a line chart.
#'
#' Description goes here.
#'
#' @return Vector
#'
#' @examples
#' scale_linetype_high_contrast()
#'
#' @importFrom ggplot2 scale_linetype_manual
#'
#' @export
scale_linetype_high_contrast = function() {
  scale_linetype_manual(values=c("solid", "dashed", "dotted", "dotdash", "dotted", "longdash", "twodash"))
}
