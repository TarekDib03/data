x <- c(rep("Syrian Regime", 183827), rep("Opposition Forces", 2959), rep("ISIS", 2196),
       rep("Unidentified Groups", 2159), rep("Russian Forces", 1984), rep("Kurdish Forces", 416),
       rep("Al Nusra Front", 356), rep("International Coalition Forces", 311))


library(ggplot2)
library(dplyr)

DF <- data.frame(table(x))
killings <- DF %>% group_by(Freq, x)
ggplot(DF, aes(x = reorder(x, -Freq), y = Freq)) + 
  geom_bar(stat="identity", aes(fill = factor(x))) + 
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5), text = element_text(size=14), 
        legend.title=element_blank(), panel.background = element_rect(fill = 'gray88', colour = 'black')) +
  geom_text(data = killings, aes(label=Freq), vjust=-0.3) +
  ggtitle("Number of Civilian Deaths Caused by each Party Involved in the War in Syria\nMarch 2011 to March 2016") +
  xlab("War Party") + 
  ylab("Number of Syrian Civilian Deaths")

