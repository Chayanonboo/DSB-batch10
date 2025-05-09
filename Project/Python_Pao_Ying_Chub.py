## Pao Ying Chub
```py import random
def pao_ying_chub():
    user_score = 0
    bot_score = 0
    hands = ["rock", "paper", "scissor"]

    while True:
        print(f"Who has 5 point first is win, please choose one of these hands: {hands}")
        user = input().lower()
        if user not in hands:
            print(f"Invalid hands, please choose one of these hands: {hands}")
            continue
        print(f"You choose: {user}")
        bot = random.choice(hands)
        print(f"Bot choose: {bot}")
        if user == bot:
            print("Tie")
            continue
        elif ((user == "rock" and bot == "scissor")
            or (user == "paper" and bot == "rock")
            or (user == "scissor" and bot == "paper")):
            user_score += 1
            print(f"Now : user have {user_score} point!")
            if user_score == 5:
                print("You win Pao Ying Chub game!")
                break
            else:
                continue
        else:
            bot_score += 1
            print(f"Now : bot have {bot_score} point!")
            if bot_score == 5:
                print("Bot win Pao Ying Chub game!")
                break
            else:
                continue

pao_ying_chub()
Pao_Ying_Chub สามารถเล่น rock, scissor, paper จนจบเกมได้
## Result
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
rock
You choose: rock
Bot choose: scissor
Now : user have 1 point!
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
scissor
You choose: scissor
Bot choose: paper
Now : user have 2 point!
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
rock
You choose: rock
Bot choose: rock
Tie
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
paper
You choose: paper
Bot choose: paper
Tie
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
scissor
You choose: scissor
Bot choose: paper
Now : user have 3 point!
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
paper
You choose: paper
Bot choose: scissor
Now : bot have 1 point!
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
paper
You choose: paper
Bot choose: scissor
Now : bot have 2 point!
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
paper
You choose: paper
Bot choose: scissor
Now : bot have 3 point!
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
paper
You choose: paper
Bot choose: rock
Now : user have 4 point!
Who has 5 point first is win, please choose one of these hands: ['rock', 'paper', 'scissor']
paper
You choose: paper
Bot choose: rock
Now : user have 5 point!
You win Pao Ying Chub game!
```
