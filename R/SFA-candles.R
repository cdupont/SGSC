#!/usr/bin/Rscript --vanilla

require(stats)

hours<-c(0, 6, 12, 18, 24)
devHours<-c(3, 9, 15, 21, 3)
bizPerf=c(100, 200, 250, 150, 100)
sdd=c(80, 30, 40, 50)
sdu=c(20, 100, 20, 20)
epsilon=.2

par(col.axis="red", lines.lwd=2.0)
pdf(paste("../generated/SFA-candles.pdf"))
plot(hours, bizPerf, ylim=c(0, 350), xlim=c(0, 24), xaxs="i", yaxs="i", xlab="Time (Hour of the day)", ylab="Business Performance (Hertz)", col="red")
lines(hours, bizPerf, lty=1, type="s", col="red", lwd=2.0)
segments(devHours, bizPerf-sdd , devHours, bizPerf+sdu, lwd=2.0)
segments(devHours-epsilon, bizPerf-sdd, devHours+epsilon, bizPerf-sdd, lwd=2.0)
segments(devHours-epsilon, bizPerf+sdu, devHours+epsilon, bizPerf+sdu, lwd=2.0)

text(x=6, y=100, pos=4, labels="Recommended Business Perf. :|", cex=0.8);
text(x=2, y=130, pos=4, labels="PosDev", cex=0.8);
text(x=2, y=10,  pos=4, labels="NegDev", cex=0.8);
text(x=2.7, y=110, pos=4, labels="1H :)", cex=0.8);
text(x=2.7, y=60,  pos=4, labels="-1H :(", cex=0.8);
