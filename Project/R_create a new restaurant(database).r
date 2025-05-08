install.packages("tidyverse")
install.packages("RSQLite")
library(tidyverse)
library(RSQLite)

## ทำเพื่อสามารถสร้าง database table บนโปรแกรม R ได้
res <- dbConnect(SQLite(), "non_reataurant.db")

## 1. Create Staff Table
staff <- data.frame(
  idStaff = 1:5,
  nameStaff = c("non","nan","nun","mind","kung"),
  position = c("Manager","Chef","Waiter","Waiter","Cashier")
)

## 1. Create Menu Table
menu <- data.frame(
  idMenu = 1:4,
  name = c("pizza","Chicken","ice cream","drinking water"),
  category = c("food","food","dessert","drink"),
  price = c(120,30,60,10),
  promotion = c("yes","yes","yes","no")
)


order_menu <- data.frame(
  idOrder = 1:5,
  idStaff = c(1,2,3,3,4),
  idMenu = c(3,2,1,4,2),
  guestCount = c(6,8,9,7,2),
  itemCount = c(6,4,7,8,3),
  totalPrice = c(1000,900,2000,3000,2100)
)

customer <- data.frame(
  customer_id = 1:5,
  customer_name = c("Pan", "Pun", "Pon", "Jay", "Jai"),
  age = c(34, 35, 27, 28, 30) 
)

dbWriteTable(res,"staffs",staff)
dbWriteTable(res,"menus",menu)
dbWriteTable(res,"order",order_menu)
dbWriteTable(res,"customers",customer)

dbListTables(res)

dbListFields(res,"staffs")
dbGetQuery(res, "select * from staffs")

dbGetQuery(res, "select customer_id as id from customers")
