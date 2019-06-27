rm(list=ls())
gc()

Game_Data_26 <- clean_names(read_excel("NHL Season Simulator R.xlsx",
                                       sheet = 1),
                            "parsed")

Game_Data_51 <- clean_names(read_excel("NHL Season Simulator R.xlsx",
                                       sheet = 2),
                            "parsed")

Game_Data_82 <- clean_names(read_excel("NHL Season Simulator R.xlsx",
                                       sheet = 3),
                            "parsed")

Game_Data_Finals <- clean_names(read_excel("NHL Season Simulator R.xlsx",
                                           sheet = 4),
                                "parsed")

Elo_25 <- read_excel("NHL Elo Ratings.xlsx",
                     sheet = 1)

Elo_50 <- read_excel("NHL Elo Ratings.xlsx",
                     sheet = 2)

Elo_Season <- read_excel("NHL Elo Ratings.xlsx",
                         sheet = 3)


Game_Data_26 <- left_join(x = Game_Data_26,
                          y = Elo_25,
                          by = c("Team_A" = "Team"))

Game_Data_26 <- rename(Game_Data_26, 
                       Rating_A = Rating)

Game_Data_26 <- left_join(x = Game_Data_26,
                          y = Elo_25,
                          by = c("Team_B" = "Team"))

Game_Data_26 <- rename(Game_Data_26,
                       Rating_B = Rating)

Game_Data_26 <- mutate(Game_Data_26,
                       "Expected" = (1 / 
                                       (1 + 10^(-(Rating_B - Rating_A) / 400))))