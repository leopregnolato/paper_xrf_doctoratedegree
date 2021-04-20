library(factoextra)
library(FactoMineR)
library(ggplot2)
library(ggcorrplot)
library(psych)

describe(As_Aglomeratum)

boxplot(As_Aglomeratum)

data <- read.csv("As_Aglomeratum.csv", row.names=1)
View(data)
boxplot(scale(data), xaxt = "n", yaxt = "n")
par(mar = c(6.1, 4.1, 4.1, 4.1), # change the margins
    lwd = 2, # increase the line thickness
    cex.axis = 1.2 # increase default axis label size
    )
## Draw y-axis.
axis(side = 2,
     ## Rotate labels perpendicular to y-axis.
     las = 2,
     ## Adjust y-axis label positions.
     mgp = c(3, 0.75, 0))

## Draw the x-axis labels.
text(x = 1:length(data),
     ## Move labels to just below bottom of chart.
     y = par("usr")[3] - 0.05,
     ## Use names from the data list.
     labels = names(As_Aglomeratum),
     ## Change the clipping region.
     xpd = NA,
     ## Rotate the labels by 35 degrees.
     srt = 90,
     ## Adjust the labels to almost 100% right-justified.
     adj = 1,
     ## Increase label size.
     cex = 1.1)
