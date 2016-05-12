cpkHistogram <- function(myData, LowLimit, HiLimit, sTitle, specCol = "red"){
  objHist <- hist(myData, plot = FALSE);
  par(bg="white");
  
  
  xLim <- range(myData);
  xLim <- xLim + diff(xLim) * c(-0.2, 0.2);
  xFit <- seq(min(xLim), max(xLim), length = 200);
  yFit <- dnorm(xFit, mean = mean(myData), sd = sd(myData));
  yLim <- range(histoObj$density);
  yLim <- yLim + diff(yLim) * c(-0.1,   0.3);
  
  hist(myData, xlim = xLim, ylim = yLim, main= paste("Histogram of ", sTitle), col="lightblue", freq = FALSE, 
       xlab= "", ylab="");
  lines(xFit, yFit, col = "blue", lwd = 2);
  abline(v = LowLimit, col=specCol, lwd = 2, lty = 5);
  abline(v = HiLimit, col=specCol, lwd = 2, lty = 5);
  if (!is.null(LowLimit)){
    axis(side = 3, at = LowLimit, labels = paste("LSL = ", LowLimit), col= specCol, cex.axis = 0.6 );
    
  }
  
  if (!is.null(HiLimit)){
    axis(side = 3, at = HiLimit, labels = paste("USL = ", HiLimit), col= specCol, cex.axis = 0.6 );
    
  }
  
}