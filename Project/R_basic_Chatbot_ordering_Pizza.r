## chatbot order Pizza 
## ขั้นตอนในการใช้โปรแกรมนี้
## 1. สามารถเริ่มการใช้ Program Chatbot ordering Pizza ได้ด้วยการกดฟังก์ชัน pizza()
## 2. จะมีประโยคขึ้นมาดังนี้ 
pizza()
[1] "Hello"                                      
[2] "My name is Non,welcome to pizza restaurant!"
How can I help you?
ให้ตอบ yes เพื่อไปขั้นตอนถัดไป
## 3 ให้เลือก crust Pizza (Thin, Pan, Sausage, Extreme-cheese) 4 crust ดังนี้
[1] "Select your crust" เลือก Pan
  crust_id     crust_name price
1        1           Thin    20
2        2            Pan    25
3        3        Sausage    30
4        4 Extreme-cheese    35
## 4 ให้เลือกหน้า Topping (Hawaiian, Cocktail Shrimp, Seafood Deluxe, Chicken Spicy, Tom Yum Kung) 5 Topping ดังนี้
[1] "Select your topping" เลือก Hawaiian
  topping_id    topping_name price
1          1        Hawaiian   250
2          2 Cocktail Shrimp   260
3          3  Seafood Deluxe   270
4          4   Chicken Spicy   280
5          5    Tom Yum Kung   290
## 5 มีเจอ Anything else ..... ให้ตอบ yes
## 6 ให้เลือกหน้า Other(Drinking Water, Chicken Nuggets, BBQ Chickern Wings) 3 Other ดังนี้
เลือก Drinking Water
  other_id         other_name price
1        1     Drinking Water    42
2        2    Chicken Nuggets    40
3        3 BBQ Chickern Wings    78
## 7 สุดท้ายจะแสดงผลลัพธ์ออกมาดังนี้ [1] "The total price is 317 $"

## chatbot order Pizza 
install.packages("glue")

library(glue)
## crust 

# create crust
list_crust <- data.frame(list(
  crust_id = 1:4,
  crust_name = c("Thin",
                 "Pan",
                 "Sausage",
                 "Extreme-cheese"),
  price = c(20,25,30,35)
))

## create topping 
list_topping <- data.frame(list(
  topping_id = 1:5,
  topping_name = c(
    "Hawaiian",
    "Cocktail Shrimp",
    "Seafood Deluxe",
    "Chicken Spicy",
    "Tom Yum Kung"
  ),
  price = c(250,260,270,280,290)
))

## create other 
list_other <- data.frame(list(
  other_id = 1:3,
  other_name = c(
    "Drinking Water",
    "Chicken Nuggets",
    "BBQ Chickern Wings"
  ),
  price = c(42,40,78)
))

wel <- "yes"

## create the welcome bot
pizza <- function() {
  print(c("Hello", 
          "My name is Non,welcome to pizza restaurant!"
          ))
  welcome <- readline("How can I help you?")

## home 
  if(tolower(welcome == wel)){
## crust 
    print("Select your crust")
    print(list_crust)
    select_crust <- readline("Pls select crust")
## topping 
    print("Select your topping")
    print(list_topping)
    select_menu <- readline("Select your topping")
    other <- readline("Anything else .....")
    if(other == wel) {
## other 
      print(list_other)
      select_other <- readline("Pls select")
    } else {
      print("Thank for your serving")
    }

    if(select_crust %in% list_crust$crust_name) {
      price_c <- list_crust[which(list_crust$crust_name == select_crust), "price"]
    }

    if(select_menu %in% list_topping$topping_name) {
      price_t <- list_topping[which(list_topping$topping_name == select_menu),"price"]
    } 

    if(select_other %in% list_other$other_name) {
      price_o <- list_other[which(list_other$other_name == select_other), "price"]
    } 

    print(paste0("The total price is ", price_c + price_t + price_o, " $"))
  } else {
    print("Thank for your serving")
  }
}

