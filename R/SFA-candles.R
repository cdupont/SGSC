#!/usr/bin/Rscript --vanilla

require(stats)

hours<-c(0, 6, 12, 18, 24)
devHours<-c(3, 9, 15, 21, 3)
bizPerf=c(100, 200, 300, 400, 100)
sdd=c(80, 30, 40, 50)
sdu=c(20, 100, 20, 20)
epsilon=.2

pdf(paste("../generated/SFA-candles.pdf"))
plot(hours, bizPerf, ylim=c(0, 450), xlim=c(0, 24), xaxs="i", yaxs="i", xlab="Time (Hour of the day)", ylab="Business Performance (Hertz)")
lines(hours, bizPerf, lty=1, type="s")
segments(devHours, bizPerf-sdd , devHours, bizPerf+sdu)
segments(devHours-epsilon, bizPerf-sdd, devHours+epsilon, bizPerf-sdd)
segments(devHours-epsilon, bizPerf+sdu, devHours+epsilon, bizPerf+sdu)

text(x=6, y=100, pos=4, labels="RecoBP :|");
text(x=1, y=130, pos=4, labels="PosDev :)");
text(x=3, y=50,  pos=4, labels="NegDev :(");
