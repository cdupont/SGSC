#!/usr/bin/Rscript --vanilla

#librarBizPerf(plotriHour)
require(stats)

Hour<-c(0:24)
Hour<-c(0, 6, 12, 18, 24)
BizPerf=c(100, 200, 300, 400, 500)
sdd=c(20, 30, 40, 50, 60)
sdu=c(20, 20, 20, 20, 20)
epsilon=.2
#par(pch=22, col="red") # plotting sBizPerfmbol and color 
#par(mfrow=c(2,4)) # all plots on one page 

pdf(paste("../generated/SFA-candles.pdf"))
#plot(Hour, BizPerf, ylim=c(0, 550), type="n", main="Service Flexibility Agreement")
#legend(xrange[1], yrange[2], 1:ntrees, cex=0.8, col=colors, pch=plotchar, lty=linetype, title="Service Flexibility Agreement")
plot(Hour, BizPerf, ylim=c(0, 550))
lines(Hour, BizPerf, lty=3, type="s")
segments(Hour, BizPerf-sdd , Hour, BizPerf+sdu)
segments(Hour-epsilon, BizPerf-sdd, Hour+epsilon, BizPerf-sdd)
segments(Hour-epsilon, BizPerf+sdu, Hour+epsilon, BizPerf+sdu)
#legend(title="Service Flexibility Agreement")

quit();

for(i in 1:5) {
}

epsilon = 0.02
for(i in 1:5) {
    up = BizPerf[i] + sd[i]
    low = BizPerf[i] - sd[i]
    segments(Hour[i],low , Hour[i], up)
    segments(Hour[i]-epsilon, up , Hour[i]+epsilon, up)
    segments(Hour[i]-epsilon, low , Hour[i]+epsilon, low)
}
