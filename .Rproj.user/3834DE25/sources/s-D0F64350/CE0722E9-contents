library(ggplot2)


data_norm <- data_frame(team_no = c(1:31),
                        y = rnorm(n = 31, mean = 15, sd = 2))

ggplot(data_norm,
       aes(x = team_no,
           y = y)) +
  geom_hline(yintercept = -0.05,
             col = "#fcb514",
             size = 1.25) +
  geom_bar(col = "#002f87",
           fill = "white",
           stat = "identity") +
  scale_x_continuous(breaks = c(1:31),
                     "Team ID") +
  scale_y_continuous("Likelihood of Winning") +
  ggtitle("NHL Team Likelihood of Winning Stanley Cup",
          "After 25 Games") +
  theme_minimal() +
  theme(plot.background = element_rect(fill = "#002f87"),
        text = element_text(colour = "white",
                            family = "Arial Nova",
                            size = 24),
        panel.grid = element_blank(),
        title = element_text(face = "bold"),
        axis.text.y = element_blank(),
        axis.text.x = element_text(color = "#fcb514"))

  
