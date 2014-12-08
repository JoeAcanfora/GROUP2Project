# Joe Acanfora
# 8/27/2014
# CMDA
# Homework 2
setwd("C://Users//Joe//Documents//~Virginia Tech//Computer Science//CDMA 3654//hw2")
# 2
#It looks like this data was conglomorated from multiple servers based on the "original" file headings
#Age-An integer found in column AGEP.
#Employment class-Examples: for-profit company, nonprofit company, ... found
#in column COW.
#Education level-Examples: no high school diploma, high school, college, and
#so on, found in column SCHL.
#Sex of worker-Found in column SEX.

# 3
# 2.12
?subset
#Return subsets of vectors, matrices or data frames which meet conditions.
psub= subset(dpus,with(dpus,(PINCP>1000)&(ESR==1)&
                         (PINCP<=250000)&(PERNP>1000)&(PERNP<=250000)&
                         (WKHP>=40)&(AGEP>=20)&(AGEP<=50)&
                         (PWGTP1>0)&(COW%in%(1:7))&(SCHL%in% (1:24))))
# 2.13
?as.factor
#The function factor is used to encode a vector as a factor
psub$SEX= as.factor(ifelse(psub$SEX==1,'M','F'))
psub$SEX= relevel(psub$SEX,'M')
cowmap<- c("Employeeofa privatefor-profit",
           "Privatenot-for-profitemployee",
           "Localgovernmentemployee",
           "Stategovernmentemployee",
           "Federalgovernmentemployee",
           "Self-employednotincorporated",
           "Self-employedincorporated")
psub$COW= as.factor(cowmap[psub$COW])
psub$COW= relevel(psub$COW,cowmap[1])
schlmap= c(
  rep("nohighschooldiploma",15),
  "Regularhighschooldiploma",
  "GEDor alternativecredential",
  "somecollegecredit,nodegree",
  "somecollegecredit,nodegree",
  "Associate'sdegree",
  "Bachelor'sdegree",
  "Master'sdegree",
  "Professionaldegree",
  "Doctoratedegree")
psub$SCHL= as.factor(schlmap[psub$SCHL])
psub$SCHL= relevel(psub$SCHL,schlmap[1])
dtrain=subset(psub,ORIGRANDGROUP>= 500)
dtest=subset(psub,ORIGRANDGROUP< 500)
?relevel
#The levels of a factor are re-ordered so that the level specified by ref is first and the others are moved down.
psub$SEX= relevel(psub$SEX,'M')
# 2.14
summary(dtrain$COW)


# 6
vehicles<-read.csv("vehicles.csv", header=TRUE, sep=",", 
                 quote = "\"", dec = ".", fill = TRUE, comment.char = "")
names(vehicles)
