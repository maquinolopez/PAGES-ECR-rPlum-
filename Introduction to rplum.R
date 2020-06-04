# ---
# title: "Introduction to rplum"
# author: "Marco A. Aquino-Lopez"
# date: "6/03/2020"
# doi: 
# ---
  
### Clearing the R enviroment 
rm(list=ls())

### Installing rplum
install.packages('rplum')

### Loading the rplum and runing the default core
# (Default core by Dr. Nicole Sandersons). 
library(rplum)

Plum()
# Plum will need confirmation for the number of sections


# Runing other cores:
# Runing core with supported 210Pb proxy data
Plum('Sim01')


# Running core with 210Pb measurements only
Plum('Sim02')


# Running core with 210Pb and other dating measurements
Plum("HP1C",1,"HP1C_C")


# Accumulation Rates
## To simulate a clean start we clean the r enviroment
rm(list=ls())

Plum(otherdates = 'HP1C_C',run=FALSE)
agedepth()
dev.off()

## plotting accumulation rates for specific depth
accrate_d10 <- accrate.depth(d = 10)  
head(accrate_d10)
mean(accrate_d10);var(accrate_d10)
plot(density(accrate_d10) ,main='Accumulation Rate at depth 10 cm',xlab='yr/cm',ylab='')

accrate_d25 <- accrate.depth(d = 25,cmyr = TRUE)  
head(accrate_d25)
mean(accrate_d25);var(accrate_d25)
plot(density(accrate_d25) ,main='Accumulation Rate at depth 25 cm',xlab='cm/yr',ylab='')


## plotting accumulation rates for specific age
accrate_a300 <- accrate.age(age=300)  
head(accrate_a300)
mean(accrate_a300);var(accrate_a300)
plot(density(accrate_a300) ,main='Accumulation Rate at age 300 BP',xlab='yr/cm',ylab='')

acc_rate_10 <- accrate.age(age = -10,cmyr = TRUE)  
head(acc_rate_10)
mean(acc_rate_10);var(acc_rate_10)
plot(density(acc_rate_10) ,main='Accumulation Rate at ageh -10 BP',xlab='cm/yr',ylab='')


## plotting accumulation rates for whole model
# by depth
accrate.depth.ghost(cmyr = T, acc.lim = c(0,1.5) )
accrate.depth.ghost(acc.lim = c(0,5), d.lim = c(0,10))

# by age
accrate.age.ghost(acc.lim = c(0,40))
accrate.age.ghost(cmyr = TRUE,age.lim = c(-20,50),acc.lim = c(0,.28))






