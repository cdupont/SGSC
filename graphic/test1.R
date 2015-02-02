#!/usr/bin/Rscript --vanilla
library(plotrix)
require(stats)

x=c(1:5)
y=c(1.1, 1.5, 2.9, 3.8, 5.2)
sdd=c(0.2, 0.3, 0.4, 0.5, 0.6)
sdu=c(0.1, 0.1, 0.1, 0.1, 0.1)
epsilon=0.02
#epsilon=c(0.2, 0.3, 0.4, 0.5, 0.6)
#d = data.frame(x, y, sd)

#pdf(paste("candle-graphic","-v1", ".pdf"))
pdf(paste("candle-graphic-v1", ".pdf"))
plot(x, y, ylim=c(0, 6))
segments(x, y-sdd , x, y+sdu)
segments(x-epsilon,y-sdd,x+epsilon,y-sdd)
segments(x-epsilon,y+sdu,x+epsilon,y+sdu)


quit();

epsilon = 0.02
for(i in 1:5) {
    up = y[i] + sd[i]
    low = y[i] - sd[i]
    segments(x[i],low , x[i], up)
    segments(x[i]-epsilon, up , x[i]+epsilon, up)
    segments(x[i]-epsilon, low , x[i]+epsilon, low)
}
