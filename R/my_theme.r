#' Custom ggplot2 Theme
#'
#' @return A ggplot2 theme object with custom styles.
#' @export
#'
#' @examples
#' ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt)) +
#' ggplot2::geom_point() + my_theme()
my_theme <- function() {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      text = ggplot2::element_text(family = "serif", color = "#13227c"),  # Change font and text color
      panel.background = ggplot2::element_rect(fill = "#ece9e9"),  # Custom panel background
      panel.grid.major = ggplot2::element_line(color = "#979797"),  # Customize major grid lines
      axis.title = ggplot2::element_text(size = 14, face = "bold")  # Adjust axis title styles
    )
}
