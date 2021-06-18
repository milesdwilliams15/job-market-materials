# make logo for website
library(hexSticker)
library(UCSCXenaTools)
library(tidyverse)

dt <- 
  tibble(
    x = rnorm(100),
    y = x + rnorm(100)
  )
p <- ggplot(dt) +
  aes(x, y) +
  geom_point(
    col = "darkblue",
    alpha = 0.4,
    size = 1
  ) +
  geom_smooth(
    col = "darkblue",
    size = .25
  ) +
  labs(
    x = NULL,
    y = NULL
  ) +
  scale_x_continuous(
    breaks = NULL
  ) +
  scale_y_continuous(
    breaks = NULL
  ) +
  theme_void() +
  theme(
    plot.background = 
      element_rect(
        fill = "grey90",
        color = "darkblue"
      ),
    axis.title = element_text(face = "italic")
  )
sticker(
  p,
  package = " ",
  p_size = 42,
  s_x = 1,
  s_y=1,
  s_width=1.4,
  s_height = 1.2,
  p_x = 1.2,
  p_y = 1,
  p_color = "darkblue",
  h_fill = "lightblue",
  h_color = "darkblue",
  filename = "logo.png"
)

