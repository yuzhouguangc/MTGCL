install.packages(c("readxl", "dplyr", "lubridate", "writexl"))
library(readxl)
library(dplyr)
library(lubridate)
library(writexl)


#############################
#Big dataset
#############################

data <- read.csv("transaction-list.csv")
names(data)
data$Time
data$Time <- format(as.POSIXct(data$Time, format = "%Y-%m-%d %H:%M:%S"), "%d/%m/%Y %H:%M")
data$Time
length(data$Time)#13551303
data$Year <- year(dmy_hm(data$Time))#This code just extracts all the years out
data
write.csv(data, "output_v1__all_with_year.csv", row.names = FALSE)
cat("File saved as output_v1_all_with_year.csv\n")

#############################
#Creating the data now into years - The two years
#############################

data <- read.csv("output_v1__all_with_year.csv")#read this if first time
library(dplyr)
data_2018 <- data %>% filter(Year == 2018)
write.csv(data_2018, "output__v1_2018.csv", row.names = FALSE)
cat("Filtered file saved as output_2018.csv\n")
length(data_2018$Time)
ddata <- read.csv("output__v1_2018.csv")#read this if first time
library(dplyr)
data_2018=data
length(data_2018$Time)
data_2018$Month <- month(dmy_hm(data_2018$Time), label = FALSE)  # Numeric month (1 = January)
data_2018

data_2018_jan_1 <- data_2018 %>% filter(Month == 1)
data_2018_feb_1 <- data_2018 %>% filter(Month == 2)
data_2018_mar_1 <- data_2018 %>% filter(Month == 3)
data_2018_apr_1 <- data_2018 %>% filter(Month == 4)
data_2018_may_1 <- data_2018 %>% filter(Month == 5)
data_2018_jun_1 <- data_2018 %>% filter(Month == 6)
data_2018_jul_1 <- data_2018 %>% filter(Month == 7)
data_2018_aug_1 <- data_2018 %>% filter(Month == 8)
data_2018_sep_1 <- data_2018 %>% filter(Month == 9)
data_2018_oct_1 <- data_2018 %>% filter(Month == 10)
data_2018_nov_1 <- data_2018 %>% filter(Month == 11)
data_2018_dec_1 <- data_2018 %>% filter(Month == 12)


write.csv(data_2018_jan_1, "output_2018_jan.csv", row.names = FALSE)
write.csv(data_2018_feb_1, "output_2018_feb.csv", row.names = FALSE)
write.csv(data_2018_mar_1, "output_2018_mar.csv", row.names = FALSE)
write.csv(data_2018_apr_1, "output_2018_apr.csv", row.names = FALSE)
write.csv(data_2018_may_1, "output_2018_may.csv", row.names = FALSE)
write.csv(data_2018_jun_1, "output_2018_jun.csv", row.names = FALSE)
write.csv(data_2018_jul_1, "output_2018_jul.csv", row.names = FALSE)
write.csv(data_2018_aug_1, "output_2018_aug.csv", row.names = FALSE)
write.csv(data_2018_sep_1, "output_2018_sep.csv", row.names = FALSE)
write.csv(data_2018_oct_1, "output_2018_oct.csv", row.names = FALSE)
write.csv(data_2018_nov_1, "output_2018_nov.csv", row.names = FALSE)
write.csv(data_2018_dec_1, "output_2018_dec.csv", row.names = FALSE)

------------------------
#Check the codes for the number of nodes 
install.packages("readr")
library(readr)
data
names(data)
unique_nodes <- unique(c(data$From, data$To))
num_nodes <- length(unique_nodes)
cat("The number of unique nodes is:", num_nodes, "\n")
#The number of unique nodes is: 2040143 

-------------------------


data_2019 <- data %>% filter(Year == 2019)
write.csv(data_2019, "output__v1_2019.csv", row.names = FALSE)
cat("Filtered file saved as output_2019.csv\n")
length(data_2019$Time)

data <- read.csv("output__v1_2019.csv")#read this if first time
library(dplyr)
data_2019=data
length(data_2019$Time)
data_2019$Month <- month(dmy_hm(data_2019$Time), label = FALSE)  # Numeric month (1 = January)
data_2019

data_2019_jan_1 <- data_2019 %>% filter(Month == 1)
data_2019_feb_1 <- data_2019 %>% filter(Month == 2)
data_2019_mar_1 <- data_2019 %>% filter(Month == 3)
data_2019_apr_1 <- data_2019 %>% filter(Month == 4)
data_2019_may_1 <- data_2019 %>% filter(Month == 5)
data_2019_jun_1 <- data_2019 %>% filter(Month == 6)
data_2019_jul_1 <- data_2019 %>% filter(Month == 7)
data_2019_aug_1 <- data_2019 %>% filter(Month == 8)
data_2019_sep_1 <- data_2019 %>% filter(Month == 9)
data_2019_oct_1 <- data_2019 %>% filter(Month == 10)
data_2019_nov_1 <- data_2019 %>% filter(Month == 11)
data_2019_dec_1 <- data_2019 %>% filter(Month == 12)


write.csv(data_2019_jan_1, "output_2019_jan.csv", row.names = FALSE)
write.csv(data_2019_feb_1, "output_2019_feb.csv", row.names = FALSE)
write.csv(data_2019_mar_1, "output_2019_mar.csv", row.names = FALSE)
write.csv(data_2019_apr_1, "output_2019_apr.csv", row.names = FALSE)
write.csv(data_2019_may_1, "output_2019_may.csv", row.names = FALSE)
write.csv(data_2019_jun_1, "output_2019_jun.csv", row.names = FALSE)
write.csv(data_2019_jul_1, "output_2019_jul.csv", row.names = FALSE)
write.csv(data_2019_aug_1, "output_2019_aug.csv", row.names = FALSE)
write.csv(data_2019_sep_1, "output_2019_sep.csv", row.names = FALSE)
write.csv(data_2019_oct_1, "output_2019_oct.csv", row.names = FALSE)
write.csv(data_2019_nov_1, "output_2019_nov.csv", row.names = FALSE)
write.csv(data_2019_dec_1, "output_2019_dec.csv", row.names = FALSE)


########################### nodes for 2019
data
names(data)
unique_nodes <- unique(c(data$From, data$To))
num_nodes <- length(unique_nodes)
cat("The number of unique nodes is:", num_nodes, "\n")
#The number of unique nodes is: 18385 







