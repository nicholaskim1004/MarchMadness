tourney <- read.csv("/Users/nicholaskim/Documents/Repositories/bracket challenge/bracketology/data/Tournament Matchups.csv")
round = tourney$ROUND
rounds_surv = rep(NA, nrow(tourney))

for (i in 1:nrow(tourney)){
  if (round[i] == 64){
    rounds_surv[i] = 0
  }
  else if (round[i] == 32){
    rounds_surv[i] = 1
  }
  else if (round[i] == 16){
    rounds_surv[i] = 2
  }
  else if (round[i] == 8){
    rounds_surv[i] = 3
  }
  else if (round[i] == 2){
    rounds_surv[i] = 5
  }
  else if (round[i] == 1){
    rounds_surv[i] = 6
  }
  else{
    rounds_surv[i] = 4
  }
}

rounds_surv

appearances <- tourney %>% distinct(TEAM.NO, .keep_all = TRUE)

round = appearances$ROUND
rounds_surv = rep(NA, nrow(appearances))

for (i in 1:nrow(appearances)){
  if (round[i] == 64){
    rounds_surv[i] = 0
  }
  else if (round[i] == 32){
    rounds_surv[i] = 1
  }
  else if (round[i] == 16){
    rounds_surv[i] = 2
  }
  else if (round[i] == 8){
    rounds_surv[i] = 3
  }
  else if (round[i] == 2){
    rounds_surv[i] = 5
  }
  else if (round[i] == 1){
    rounds_surv[i] = 6
  }
  else{
    rounds_surv[i] = 4
  }
}
rounds_surv

appearances$ROUND <- rounds_surv

test<-appearances %>% group_by(SEED) %>% 
  summarise(ARA = mean(ROUND)) %>% 
  ungroup()
test
