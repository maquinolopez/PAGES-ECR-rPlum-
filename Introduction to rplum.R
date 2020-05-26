---
  title: "Introduction to rplum"
author: "Marco A. Aquino-Lopez"
date: "6/03/2020"
output: html_document
---
  
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
















