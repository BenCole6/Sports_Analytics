library(pacman)

p_load("tidyverse",
       "janitor")

NHL_Game_Data <- clean_names(read_csv("NHL 2018-19 Game Data.csv"),
                             "parsed")

# duplicator <- function (data) {
#   
#   for ()
#   
# }

NHL_Home_Data <- NHL_Game_Data

for ( i in 1:nrow(NHL_Home_Data)) {
  
  NHL_Home_Data[nrow(NHL_Home_Data)+1 , ] <- NHL_Home_Data[i, c(1:2,
                                                                7:10,
                                                                3:6,
                                                                11:13,
                                                                16:17,
                                                                14:15)]
  
}

NHL_Data_Long <- arrange(NHL_Home_Data,
                         Game_Index)

write_csv(NHL_Data_Long,
          "NHL_Data_Long.csv")


#####

for (i in 1:nrow(Game_Data_Long)) {
  
  Game_Data_Long[nrow(Game_Data_Long) + 1, c("Date", "Game_Index", "Win_Type", "Att", "LOG") ] <- Game_Data_Long[ i , c("Date", "Game_Index", "Win_Type", "Att", "LOG")]
  
  Game_Data_Long[nrow(Game_Data_Long), c("Team_A", "Goals_A", "Game_No_A", "HIA_A") ] <- Game_Data_Long[ i , c("Team_B", "Goals_B", "Game_No_B", "HIA_B")]
  
  Game_Data_Long[nrow(Game_Data_Long), c("Team_B", "Goals_B", "Game_No_B", "HIA_B") ] <- Game_Data_Long[ i , c("Team_A", "Goals_A", "Game_No_A", "HIA_A")]
  
}


write_csv(Game_Data_Long,
          "Game_Data_Duplicated.csv")