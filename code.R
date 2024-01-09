library(tidyverse)
library(ggplot2)
library(dplyr)

data <- data.frame(name=c("Jewelry","Technology"," Total Bar and Coin Demand
                          (investment)",
                          "ETFs & Similar Products(investment)*","Central Banks 
                          & Other Inst"),
                   values=c(2107.00,326.6,870.6,401.1,650.3))
view(data)

ggplot(data, aes(y= reorder(name, values), x=values, fill = name))+
  geom_bar(color="Black", position = "stack", stat="identity")+
  theme(axis.text.x = element_text(angle = 90))+
  geom_text(aes(label=values), size=3,
            position = position_stack(vjust = 0.5))+
  labs(x = "Tones",
       y = "Type", 
       title = "Gold Usage in 2019",
       fill = "Region")+
  labs(title="Global Gold Demand in 2019")+
  scale_fill_manual(values=c("purple", "yellow", "purple", "orange","green"),
                    na.value = "gray30")+
  theme(legend.position = 'none')


ggplot(data, aes(y= name, x=values))+
  geom_point(color="Black", position = "identity", stat="identity")+xlim(0,2500)+
  geom_text(aes(label=values), size=3,
            position = position_stack(vjust = 0.69))+labs(x = "Tonnes",
       y = "Type", 
       title = "Gold Usage in 2019")+ theme(legend.position = 'none')






