# install.packages("rvest")
# install.packages("dplyr")

library(rvest)
library(dplyr)

link = "https://www.srmist.edu.in/vadapalani/ramapuram"
page = read_html(link)

events = page %>% html_nodes(".events_descp1 .events") %>% html_text()
dates = page %>% html_nodes(".event_day") %>% html_text()

srmeventlist= data.frame(events,dates,stringsAsFactors = FALSE)

