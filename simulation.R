#####
# Simulation comparison
#
#
#
library(rplum)

# Generate chronologies
for (i in seq(10,50,10)){
	Plum(paste0('Simulation_',i),ask=F,suggest=F)
}
tfun <- function(x)( (x^2)/3 + x/2) 
# Read data
plum10 <- read.table('./Plum_runs/Simulation_10/Simulation_10_28_ages.txt',sep='\t',header=TRUE)
plum20 <- read.table('./Plum_runs/Simulation_20/Simulation_20_24_ages.txt',sep='\t',header=TRUE)
plum30 <- read.table('./Plum_runs/Simulation_30/Simulation_30_27_ages.txt',sep='\t',header=TRUE)
plum40 <- read.table('./Plum_runs/Simulation_40/Simulation_40_26_ages.txt',sep='\t',header=TRUE)
plum50 <- read.table('./Plum_runs/Simulation_50/Simulation_50_26_ages.txt',sep='\t',header=TRUE)



png('./Presentation/img/Chrono_ssize.png',width = 1000, height = 800)
plot( plum50$depth, plum50$mean+70, main='', xlab='depth (cm)', ylab='Age (yr)', type='l', col=rgb(.9,0,0,.5),ylim=c(0,250) )
lines(plum10$depth, plum10$mean+70, col=rgb(0,.5,.5,.59))
lines(plum20$depth, plum20$mean+70, col=rgb(1,0,.5,.59))
lines(plum30$depth, plum30$mean+70, col=rgb(0,.5,1,.59))
lines(plum40$depth, plum40$mean+70, col=rgb(0,0,1,.59))
curve(tfun, add = T)
legend(0,250,c("15% (4)","20% (5)","30% (8)","40% (11)","50% (13)"),lty=1,col=c(rgb(0,0.5,0.5,.59),rgb(1,0,.5,.59),rgb(0,.5,1,.59),rgb(0,0,1,.59),rgb(.9,0,0,.5)),bty = "n")
dev.off()



png('./Presentation/img/Chrono_ssize_dif.png',width = 1000, height = 800)
plot( plum50$depth, tfun(plum50$depth) - plum50$mean-70, main='', xlab='depth (cm)', ylab='Age (yr)', type='l', col=rgb(.9,0,0,.5),ylim=c(-40,40),xlim=c(0,27) )
lines(plum10$depth, tfun(plum10$depth) - plum10$mean-70, col=rgb(0,.5,.5,.59))
lines(plum20$depth, tfun(plum20$depth) - plum20$mean-70, col=rgb(1,0,.5,.59))
lines(plum30$depth, tfun(plum30$depth) - plum30$mean-70, col=rgb(0,.5,1,.59))
lines(plum40$depth, tfun(plum40$depth) - plum40$mean-70, col=rgb(0,0,1,.59))
legend(0,40,c("15% (4)","20% (5)","30% (8)","40% (11)","50% (13)"),lty=1,col=c(rgb(0,0.5,0.5,.59),rgb(1,0,.5,.59),rgb(0,.5,1,.59),rgb(0,0,1,.59),rgb(.9,0,0,.5)),bty = "n")
dev.off()









