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