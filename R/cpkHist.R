cpkHistogram <- function(myData, LowLimit, HiLimit, sTitle, specCol = "red"){
  objHist <- hist(myData, plot = FALSE);
 
  par(bg="white");
  
  
  xLim <- range(myData, HiLimit, LowLimit);
  xLim <- xLim + diff(xLim) * c(-0.2, 0.2);
  xFit <- seq(min(xLim), max(xLim), length = 200);
  yFit <- dnorm(xFit, mean = mean(myData), sd = sd(myData));
  yLim <- range(objHist$density);
  yLim <- yLim + diff(yLim) * c(-0.1,   0.3);
  
  hist(myData, xlim = xLim, ylim = yLim,  main = "Histogram", col="lightblue", freq = FALSE, 
       xlab= "" , ylab="density");
  lines(xFit, yFit, col = "blue", lwd = 2);
  abline(v = LowLimit, col=specCol, lwd = 2, lty = 5);
  abline(v = HiLimit, col=specCol, lwd = 2, lty = 5);
  if (!is.null(LowLimit)){
    axis(side = 3, at = LowLimit, labels = paste("LSL = ", LowLimit), col= specCol, cex.axis = 0.6 );
    
  }
  
  if (!is.null(HiLimit)){
    axis(side = 3, at = HiLimit, labels = paste("USL = ", HiLimit), col= specCol, cex.axis = 0.6 );
    
  }
  qqPlot(myData, "normal", confbounds = TRUE, 0.5, main = "Q-Q plot", xlab = "", ylab = "",  
               border = "red", bounds.col = "red", bounds.lty = 3)
}


cpkValues <- function(myData, LowLimit, HiLimit){
  results <- cp(myData, "normal", LowLimit, HiLimit, false);
  vMin <- min(myData);
  vMax <- max(myData);
  vSd <- sd(myData);
  vCount <- length(myData);
  vAverage <- mean(myData)
  vAveP6 <- vAverage + 6 * vSd;
  vAveM6 <- vAverage + 6 * vSd;
  
  print(results);
  print(vMax);
  print(vMin);
  
  
}