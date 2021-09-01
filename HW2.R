# Homework Chapter 2
# Raleigh Addington

# Hospital data 2.1-2.3

load("/Users/cruzer/Desktop/AUFall2021/Biostats/biosdata/HOSPITAL.DAT.rdata")
load("/Users/cruzer/Desktop/AUFall2021/Biostats/biosdata/HOSPITAL.DAT.rdata")
 library(psych)
describe(hospital)
summary(hospital$Dur_stay)
describe(Dur_stay)
boxplot(Dur_stay~Antibio, ylab = "Dur_stay", main= "Duration of Stay based on Antibiotic")

# Cholestrol data 2.13-2.17
library(psych)
describe(Cholesterol.Revised)
Summary(Cholesterol.Revised)
stem(Cholesterol.Revised$Difference)
boxplot(Cholesterol.Revised$Difference)
boxplot(Cholesterol.Revised$Difference, ylab = "Serum difference (mg/dL)", main=  "Difference between pre/post veg diet on Serum-cholesterol levels")


# Lead 2.31-2.32
... {r}
attach(lead) 
c <- Subset(lead, Group == 1)
e <- subset(lead, Group != 2)
#creating new reader-friendly variables 
lead$Gender <- ifelse(lead$sex ==1, "Male", "Female")
lead$exposure <- ifelse(lead$Group ==1, "Control", "Exposed")
#creating table of gender broken down by exposure 
t <- table(lead$Gender, lead$exposure) 
prop.table(t)
prop.table(t)*100
hist(c$ageyrs)
hist(e$ageyrs)
...

#2.32 
iqv, exposure 
iqp, exposure
describe(c$iqv)
describe(e$iqv)
boxplot(lead$iqv ~ lead$exposure)

describe(c$iqp)
describe(c$iqp)
Boxplot(lead$iqp ~ lead$exposure, main = "Verbal Performance by Exposure", 
        xlab = "exposure",
        ylab = "IQV") 


            