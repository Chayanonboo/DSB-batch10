## Rock-Paper-Scissors
## 1. Game of Rock-Paper-Scissors
## 2. Play for 10 rounds
## 3. Sum scores and announce a winner at the end

## ขั้นตอนจะมีให้ Choice ในการแข่งกับ Bot ทั้งหมด 3 Choice ครับ ดังนี้ครับ
(rock, paper, or scissors) โดยที่ต้องเลือกคำเหล่านี้จนกว่าจะเล่นกันครบ 10 Turn จึงจะรู้ผลลัพธ์ว่าใครแพ้ใครชนะครับ
[1] "Let's play 'Rock Paper Scissors'! Whoever reaches 10 points first wins."
What whould you throw(rock, paper, or scissors).: rock
[1] "paper"
[1] "User R win"
[1] "Current User R have  1 point"
[1] "Current you have  0 point"

hands <- c("rock", "paper", "scissors")
user_win <- print("You got me GG easy.")
r_win <- print("User R win")
tie <- print("We tie this round.")

PaoYingChub()

PaoYingChub <- function() {
  user_score <- 0
  r_score <- 0
  print("Let's play 'Rock Paper Scissors'! Whoever reaches 10 points first wins.")
  while (user_score < 10 & r_score < 10) {
    repeat{
      user_throw <- readline("What whould you throw(rock, paper, or scissors).: ")
      if (user_throw %in% hands) {
        break
      } else {
        print(paste("You can only choose rock, paper, or scissors"))
      }
    }
    user_throw <- tolower(user_throw)
    r_throw <- sample(hands, 1)
    print(r_throw)
    if (user_throw == r_throw) {
      print(tie)
      print(paste("Current User R have ", r_score ,"point"))
      print(paste("Current you have ", user_score,"point"))
    } else if (user_throw == "rock" & r_throw == "paper") {
      r_score <- r_score + 1
      print(r_win)
      print(paste("Current User R have ", r_score,"point"))
      print(paste("Current you have ", user_score,"point"))
    } else if (user_throw == "rock" & r_throw == "scissors") {
      user_score <- user_score + 1
      print(user_win)
      print(paste("Current User R have ", r_score,"point"))
      print(paste("Current you have ", user_score,"point"))
    } else if (user_throw == "paper" & r_throw == "rock") {
      user_score <- user_score + 1
      print(user_win)
      print(paste("Current User R have ", r_score,"point"))
      print(paste("Current you have ", user_score,"point"))
    } else if (user_throw == "paper" & r_throw == "scissors") {
      r_score <- r_score + 1
      print(r_win)
      print(paste("Current User R have ", r_score,"point"))
      print(paste("Current you have ", user_score,"point"))
    } else if (user_throw == "scissors" & r_throw == "rock") {
      r_score <- r_score + 1
      print(r_win)
      print(paste("Current User R have ", r_score,"point"))
      print(paste("Current you have ", user_score,"point"))
    } else {
      user_score <- user_score + 1
      print(user_win)
      print(paste("Now User R have ", r_score,"point"))
      print(paste("Now you have ", user_score,"point"))
    }
  }
  if (user_score == 10) {
    print("Congrats! You win.")
  } else {
    print("Seems like User R win. 555.")
  }
}
