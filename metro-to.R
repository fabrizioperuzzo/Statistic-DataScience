library(tidyverse)
require(cowplot)

df <- read.table("DATA\\metro_to.csv", sep=";", header = TRUE)
df$poisson <- (3*df$Vp-2*df$Vs)/(6*df$Vp+2*df$Vs)


df_tn = subset(df, df$X<=4)
df_inj = subset(df, df$X>4)





a <- mean(df_tn$Vs)
s <- sd(df_tn$Vs)
n <- length(df_tn$Vs)

error <- qt(0.95,df=n-1)*s/sqrt(n)
left <- a-error
right <- a+error
left
right

# left normal
a-s*qnorm(0.95)


### caratteristiche 

a <- mean(df_inj$Vs)
s <- sd(df_inj$Vs)
n <- length(df_inj$Vs)

error <- qt(0.95,df=n-1)*s/sqrt(n)
left <- a-error
right <- a+error
left
right

# left normal
a-s*qnorm(0.95)


#### con library a parte library(Rmisc)
library(Rmisc)


