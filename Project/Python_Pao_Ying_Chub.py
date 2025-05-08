## Pao Ying Chub
import random
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
