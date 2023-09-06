library(cowplot)
watermark_plot <- function(p) {
  ret_plot <- ggdraw(p) +
    geom_text(
      data = data.frame(x = 0.5,
                        y = 0.5, label = "Example"),
      aes(x, y, label = label),
      hjust = 0.5, vjust = 0.5, angle = 45, size = 100/.pt,
      color = "lightgray", alpha = 0.25,
      inherit.aes = FALSE
    )
  return(ret_plot)
}