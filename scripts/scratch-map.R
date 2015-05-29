library(ggplot2) #static visualization
library(dplyr) #data manipulation and connect to database
library(knitr)
library("devtools") #needed to install plotly if you don't have it already

library(plotly) #interactive visualization

py <- plotly(username="bcarancibia", key="1960rm8f1b")
set_credentials_file("bcarancibia", "1960rm8f1b") 

setwd("/users/bcarancibia/CUNY_IS_661/")

db <- src_sqlite('/users/bcarancibia/CUNY_IS_661/transactions.db', create = FALSE)
db

data.clean <- tbl(db, 'transclean')

data.clean <- tbl(db, sql('SELECT "transaction.value" AS transvalue,
                    SUBSTR("transaction.date", 7, 4) || "-" ||
                    SUBSTR("transaction.date", 4, 2) || "-" ||
                    SUBSTR("transaction.date", 1, 2) as "transactiondate", "iati.identifier" AS id, "reporting.org" AS "reporter", title,
                    SUBSTR("start.planned", 7, 4) || "-" ||
                    SUBSTR("start.planned", 4, 2) || "-" ||
                    SUBSTR("start.planned", 1, 2) as "startplanned",
                    SUBSTR("end.planned", 7, 4) || "-" ||
                    SUBSTR("end.planned", 4, 2) || "-" ||
                    SUBSTR("end.planned", 1, 2) as "endplanned",
                    SUBSTR("start.actual", 7, 4) || "-" ||
                    SUBSTR("start.actual", 4, 2) || "-" ||
                    SUBSTR("start.actual", 1, 2) as "startactual",
                    SUBSTR("end.actual", 7, 4) || "-" ||
                    SUBSTR("end.actual", 4, 2) || "-" ||
                    SUBSTR("end.actual", 1, 2) as "endactual",
                    "recipient.country" AS recipient, "recipient.country.code" AS countrycode, sector
                    FROM transclean'))

#burkina 

q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Burkina Faso") %>%
  mutate(year = strftime('%Y', transactiondate))

burkina <- collect(q)

burkina$transvalue <- as.numeric(burkina$transvalue)

by.year <- group_by(burkina, year)
summary.year <- summarise(by.year, count.year = n(), 
                              total.year = sum(transvalue))

plt <- ggplot(na.omit(summary.year), aes(year, total.year)) + 
  geom_bar(stat='identity') + 
  theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))

py <- plotly()
py$ggplotly(plt)

#chad
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Chad") %>%
  mutate(year = strftime('%Y', transactiondate))

chad<- collect(q)

chad$transvalue <- as.numeric(chad$transvalue)

by.year <- group_by(chad, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

plt <- ggplot(na.omit(summary.year), aes(year, total.year)) + 
  geom_bar(stat='identity') + 
  theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))

py <- plotly()
py$ggplotly(plt)

#congo
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Congo The Democratic Republic Of The") %>%
  mutate(year = strftime('%Y', transactiondate))

congo<- collect(q)

congo$transvalue <- as.numeric(congo$transvalue)

by.year <- group_by(congo, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

plt <- ggplot(na.omit(summary.year), aes(year, total.year)) + 
  geom_bar(stat='identity') + 
  theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))

py <- plotly()
py$ggplotly(plt)


#civ
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Cote D'Ivoire") %>%
  mutate(year = strftime('%Y', transactiondate))

civ<- collect(q)

civ$transvalue <- as.numeric(civ$transvalue)

by.year <- group_by(civ, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

plt <- ggplot(na.omit(summary.year), aes(year, total.year)) + 
  geom_bar(stat='identity') + 
  theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))

py <- plotly()
py$ggplotly(plt)

#ethiopia
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Ethiopia") %>%
  mutate(year = strftime('%Y', transactiondate))

ethiopia<- collect(q)

ethiopia$transvalue <- as.numeric(ethiopia$transvalue)

by.year <- group_by(ethiopia, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

plt <- ggplot(na.omit(summary.year), aes(year, total.year)) + 
  geom_bar(stat='identity') + 
  theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))

py <- plotly()
py$ggplotly(plt)


#haiti
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Haiti") %>%
  mutate(year = strftime('%Y', transactiondate))

haiti<- collect(q)

haiti$transvalue <- as.numeric(haiti$transvalue)

by.year <- group_by(haiti, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

plt <- ggplot(na.omit(summary.year), aes(year, total.year)) + 
  geom_bar(stat='identity') + 
  theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))

py <- plotly()
py$ggplotly(plt)

#honduras
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Honduras") %>%
  mutate(year = strftime('%Y', transactiondate))

honduras<- collect(q)

honduras$transvalue <- as.numeric(honduras$transvalue)

by.year <- group_by(honduras, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

plt <- ggplot(na.omit(summary.year), aes(year, total.year)) + 
  geom_bar(stat='identity') + 
  theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))

py <- plotly()

py$ggplotly(plt)


#kyrg
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Kyrgyzstan") %>%
  mutate(year = strftime('%Y', transactiondate))

kyrg<- collect(q)

kyrg$transvalue <- as.numeric(kyrg$transvalue)

by.year <- group_by(kyrg, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

plt <- ggplot(na.omit(summary.year), aes(year, total.year)) + 
  geom_bar(stat='identity') + 
  theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))

py <- plotly()

py$ggplotly(plt)


#laos
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Laos") %>%
  mutate(year = strftime('%Y', transactiondate))

laos<- collect(q)

laos$transvalue <- as.numeric(laos$transvalue)

by.year <- group_by(laos, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#madagascar
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Madagascar") %>%
  mutate(year = strftime('%Y', transactiondate))

madagascar<- collect(q)

madagascar$transvalue <- as.numeric(madagascar$transvalue)

by.year <- group_by(madagascar, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#malawi
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Malawi") %>%
  mutate(year = strftime('%Y', transactiondate))

malawi<- collect(q)

malawi$transvalue <- as.numeric(malawi$transvalue)

by.year <- group_by(malawi, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#nepal
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Nepal") %>%
  mutate(year = strftime('%Y', transactiondate))

nepal <- collect(q)

nepal$transvalue <- as.numeric(nepal$transvalue)


by.year <- group_by(nepal, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#senegal
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Senegal") %>%
  mutate(year = strftime('%Y', transactiondate))

senegal <- collect(q)

senegal$transvalue <- as.numeric(senegal$transvalue)

by.year <- group_by(senegal, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#tanzania
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Tanzania United Republic Of") %>%
  mutate(year = strftime('%Y', transactiondate))

tanzania <- collect(q)

tanzania$transvalue <- as.numeric(tanzania$transvalue)

by.year <- group_by(tanzania, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#timor
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Timor-Leste") %>%
  mutate(year = strftime('%Y', transactiondate))

timor <- collect(q)

timor$transvalue <- as.numeric(timor$transvalue)

by.year <- group_by(timor, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#Uganda
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Uganda") %>%
  mutate(year = strftime('%Y', transactiondate))

uganda <- collect(q)

uganda$transvalue <- as.numeric(uganda$transvalue)

by.year <- group_by(uganda, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))




