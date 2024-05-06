library(readxl)
library(dplyr)
df<-read_xlsx("C://clases//Data science//reto4//ejercicioMUDLEbien//datos//online_retail_II.xlsx")
str(df)
length(unique(df$StockCode))

df%>%
  group_by(StockCode)%>%
  summarise(mean=mean(Price,na.rm=T))
