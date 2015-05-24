#burkina 

q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Burkina Faso") %>%
  mutate(year = strftime('%Y', transactiondate))

burkina <- collect(q)

burkina$transvalue <- as.numeric(burkina$transvalue)

by.year <- group_by(burkina, year)
summary.year <- summarise(by.year, count.year = n(), 
                              total.year = sum(transvalue))

#chad
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Chad") %>%
  mutate(year = strftime('%Y', transactiondate))

chad<- collect(q)

chad$transvalue <- as.numeric(chad$transvalue)

by.year <- group_by(chad, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#congo
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Congo The Democratic Republic Of The") %>%
  mutate(year = strftime('%Y', transactiondate))

congo<- collect(q)

congo$transvalue <- as.numeric(congo$transvalue)

by.year <- group_by(congo, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))


#civ
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Cote D'Ivoire") %>%
  mutate(year = strftime('%Y', transactiondate))

civ<- collect(q)

civ$transvalue <- as.numeric(civ$transvalue)

by.year <- group_by(civ, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#ethiopia
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Ethiopia") %>%
  mutate(year = strftime('%Y', transactiondate))

ethiopia<- collect(q)

ethiopia$transvalue <- as.numeric(ethiopia$transvalue)

by.year <- group_by(ethiopia, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))


#haiti
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Haiti") %>%
  mutate(year = strftime('%Y', transactiondate))

haiti<- collect(q)

haiti$transvalue <- as.numeric(haiti$transvalue)

by.year <- group_by(haiti, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#honduras
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Honduras") %>%
  mutate(year = strftime('%Y', transactiondate))

honduras<- collect(q)

honduras$transvalue <- as.numeric(honduras$transvalue)

by.year <- group_by(honduras, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

#kyrg
q <- data.clean %>% select(transvalue, recipient, transactiondate) %>% 
  filter(recipient == "Kyrgyzstan") %>%
  mutate(year = strftime('%Y', transactiondate))

kyrg<- collect(q)

kyrg$transvalue <- as.numeric(kyrg$transvalue)

by.year <- group_by(kyrg, year)
summary.year <- summarise(by.year, count.year = n(), 
                          total.year = sum(transvalue))

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




