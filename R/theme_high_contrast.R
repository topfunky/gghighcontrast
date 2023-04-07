#' A high contrast theme.
#'
#' Easily customizable with a foreground and background color. Other customization is possible.
#'
#' @param base_size font size to use for the text in the plot (\code{11})
#' @param base_family font to use for the text in the plot (\code{"InputMono"})
#' @param foreground_color color for text and lines (\code{"white"})
#' @param background_color color for the background (\code{"black"})
#'
#' @return None
#'
#' @examples
#' theme_high_contrast()
#'
#' @importFrom ggplot2 ggplot theme element_line element_rect element_text element_blank rel unit margin
#' @importFrom colorspace lighten darken
#'
#' @export
NULL

theme_high_contrast <- function(base_size = 11,
                                base_family = "",
                                foreground_color = "white",
                                background_color = "black")
{
  half_line <- base_size / 2
  t <- theme(
    line = element_line(
      colour = foreground_color,
      linewidth = 0.5,
      linetype = 1,
      lineend = "butt"
    ),
    rect = element_rect(
      fill = foreground_color,
      colour = foreground_color,
      linewidth = 0.5,
      linetype = 1
    ),
    text = element_text(
      family = base_family,
      face = "plain",
      colour = foreground_color,
      size = base_size,
      lineheight = 0.9,
      hjust = 0,
      # Align left
      vjust = 0.5,
      angle = 0,
      margin = margin(),
      debug = FALSE
    ),

    axis.line = element_blank(),
    axis.text = element_text(size = rel(0.8), colour = foreground_color),
    axis.text.x = element_text(
      margin = margin(t = 0.8 * half_line / 2),
      vjust = 1,
      hjust = 0.5,
      color = foreground_color
    ),
    axis.text.y = element_text(
      margin = margin(r = 0.8 * half_line / 2),
      hjust = 1,
      color = foreground_color
    ),
    axis.ticks = element_line(colour = foreground_color),
    axis.ticks.length = unit(half_line / 2, "pt"),
    axis.ticks.y = element_blank(),
    axis.title.x = element_text(margin = margin(
      t = 0.8 * half_line,
      b = 0.8 * half_line / 2
    )),
    axis.title.y = element_text(
      angle = 90,
      margin = margin(r = 0.8 * half_line,
                      l = 0.8 * half_line / 2)
    ),

    legend.background = element_rect(colour = background_color, fill = background_color),
    legend.spacing = unit(0.2, "cm"),
    legend.key = element_rect(
      fill = background_color,
      colour = foreground_color,
      linewidth = 0
    ),
    legend.key.size = unit(1.2, "lines"),
    legend.key.height = NULL,
    legend.key.width = NULL,

    legend.text = element_text(size = rel(0.8)),
    legend.text.align = NULL,
    legend.title = element_text(hjust = 0),
    legend.title.align = NULL,
    legend.position = "right",
    legend.direction = NULL,
    legend.justification = "center",
    legend.box = NULL,

    panel.background = element_rect(colour = background_color, fill = background_color),
    panel.border = element_blank(),
    panel.grid.major.y = element_line(colour = foreground_color, linetype =
                                        "dotted"),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.y = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.spacing = unit(half_line, "pt"),
    panel.margin.x = NULL,
    panel.margin.y = NULL,
    panel.ontop = FALSE,

    strip.background = element_blank(),
    strip.text = element_text(colour = foreground_color, size = rel(0.8)),
    strip.text.x = element_text(margin = margin(t = half_line,
                                                b = half_line)),
    strip.text.y = element_text(
      angle = -90,
      margin = margin(l = half_line,
                      r = half_line)
    ),
    strip.switch.pad.grid = unit(0.1, "cm"),
    strip.switch.pad.wrap = unit(0.1, "cm"),

    plot.background = element_rect(colour = background_color, fill = background_color),
    plot.title = element_text(
      size = rel(1.2),
      margin = margin(b = half_line * 1.2),
      face = "bold"
    ),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    plot.caption = element_text(size = rel(0.6),
                                hjust = 1),
    plot.margin = margin(half_line, half_line, half_line, half_line * 1.5),
    complete = TRUE
  )

  # Make sure all elements are set to NULL if not explicitly defined
  # ggplot_global$theme_all_null %+replace% t
}

