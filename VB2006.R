###################################################
# Title  
# Description
# Marco A. Aquino-López
# Cored by Vladislav Carnero-Bravo (doi 10.1007/s11356-014-3703-0)
# Valle de Bravo, México
###################################################
rm(list = ls()) 	# clean R environment

# Load libraries
library(rplum)
Plum('VB2006',2.5,coredir='.')

#time marker at depth ~63 cm
mean(Bacon.Age.d(63,BCAD = T))


######################
Plum('VB2006',2.5,'VB2006-C',normal=T)

######################

Plum('VB2006',2.5,acc.mean=3,BCAD = T)
n

par(mfrow=c(1,1))
Plum <- read.table('./Plum_runs/VB2006/VB2006_35_ages.txt',header=T)
plot(Plum$depth,Plum$mean,xlab="depth (cm)",ylab="yr BP",type='l',col='blue')
lines(Plum$depth,Plum$max)
lines(Plum$depth,Plum$min)
polygon(c(62,65,65,62),c(1950-1962,1950-1962,1950-1964,1950-1964), col = rgb(0,1,0,.5), border = rgb(0,1,0,.5))



######################

Plum('VB2006',2.5,'VB2006-C',acc.mean=3,normal=T)
n

par(mfrow=c(1,1))
Plum<- read.table('./Plum_runs/VB2006/VB2006_88_ages.txt',header=T)
CRS <- read.table('./Plum_runs/VB2006/VB2006-CRS.csv',header=T,sep=',')
plot(Plum$depth,Plum$mean,xlab="depth (cm)",ylab="yr BP",type='l',col='blue')
lines(Plum$depth,Plum$max)
lines(Plum$depth,Plum$min)
lines(CRS$Depth,CRS$BP,col='red')
polygon(c(66,67,67,66),c(1950-1962,1950-1962,1950-1965,1950-1965), col = rgb(0,1,0,.5), border = rgb(0,1,0,.5))




######################


accrate.depth.ghost(cmyr = T, acc.lim = c(0,15) )
CRSAR <- read.table('./Plum_runs/VB2006/VB2006-SAR.csv',header=T,sep=',')
lines(CRSAR$Depth,CRSAR$SAR,col='green')
lines(CRSAR$Depth,CRSAR$SAR+2*CRSAR$SARu,col='green')
lines(CRSAR$Depth,CRSAR$SAR-2*CRSAR$SARu,col='green')



