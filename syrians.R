Country <- c("US", "Canada", "Russia", "Qatar", "Kuwait", "UAE", 
             "Saudi Arabia")
weaponsSoldToSyria <- c(7.7, 0.718, 3, 3, 0.4, 0.215, 0.136)
SyrianRefugeesAccepted <- c(1434, 2300, 1395, 0, 0, 0, 0)

df <- data.frame("Country" = Country, "Weapon Sold to Syria"  = 
                   weaponsSoldToSyria, "Syrian Refugees Accepted" =
                   SyrianRefugeesAccepted)

library(ggplot2)
p <- ggplot(df, aes(Weapon.Sold.to.Syria)) 
barplot(df$Weapon.Sold.to.Syria, names.arg=Country)

p <- qplot(x=Country, y=Weapon.Sold.to.Syria,
                       data=df, geom="bar", stat="identity",
                       position="dodge", fill="#FF9999")

ggplot(df, aes(x=Country, y=Weapon.Sold.to.Syria)) + 
      geom_bar(stat="identity", fill="#FF9999", colour="black") +
      ylab("Weapons Sent to Syria in Billions of Dollars") + 
      ggtitle("Weapons Sold to Syria since 2011\n by the nations that sent the most arms\nand accepted the least refugees")

library(rCharts)
nPlot(Weapon.Sold.to.Syria ~ Country, data=df, 
      type="multiBarChart")

n1$print("chart3")
edit(df)
