## study parameters
## power percent as decimal 0-1 : often 80% = .8
## standard deviation - no need to convert units
## minimum detectable difference - no need to convert units
## significance percent as decimal 0-1 : often 5% = .05

## pow = .80
## std_dev = 500
## min_detect = 100
## significance = .05

## z = qnorm(pow)
## zz = qnorm((1-(significance/2)))   


sample_size=function(std_dev,pow,significance,min_detect) {
  return((std_dev^2)*2*(((qnorm(pow)+qnorm(1-(significance/2)))^2)/(min_detect^2)))
}
n = sample_size(std_dev,pow,significance,min_detect)
print(n)
