# Homework Chapter 2
# Raleigh Addington

# Hospital data 2.1-2.3

load("/Users/cruzer/Desktop/AUFall2021/Biostats/biosdata/HOSPITAL.DAT.rdata")
load("/Users/cruzer/Desktop/AUFall2021/Biostats/biosdata/HOSPITAL.DAT.rdata")
 library(psych)
describe(hospital)
summary(hospital$Dur_stay)
describe(Dur_stay)
boxplot(hospital$Dur_stay~hospital$Antibio, ylab = "Duration of stay (days)", main= "Duration of Stay based on Antibiotic")

#double checking box plot
antibiohosp<- subset(hospital, Antibio == 1)
mean(antibiohosp$Dur_stay)

noantibiohosp<- subset(hospital, Antibio == 2)
mean(noantibiohosp$Dur_stay)


#other boxplot option
ggplot(hospital, aes(x = as.factor(Antibio), y = Dur_stay))+
  geom_boxplot()

# Cholestrol data 2.13-2.17
describe(Cholesterol.Revised)
summary(Cholesterol.Revised)
stem(Cholesterol.Revised$Difference)
boxplot(Cholesterol.Revised$Difference)
boxplot(Cholesterol.Revised$Difference, ylab = "Serum difference (mg/dL)", main=  "Difference between pre/post veg diet on Serum-cholesterol levels")


# Lead 2.31
... {r}
attach(lead) 

#create control and exposure subset

c <- subset(lead, Group == 1)
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


##2.31 question for LEAD 

# compring exposure and control for age and gender





## we are going to create a smaller table with only the interest variables

# first we save each column in a variable, as a vector
id <- lead$id
iqv <- lead$iqv
performance <- lead$iqp
exposure <- lead$exposure

# then we combine all those vectors into a data frame
ex32data <- data.frame(id, iqv, performance, exposure) 
#easier way to do this
ex32dataeasy <- data.frame(lead$id, lead$iqv, lead$iqp, lead$exposure)

# then we subset that dataframe into 2 data frames based on exposure
control <- subset(ex32data, exposure == "Control")
#exposure <- subset(ex32data, exposure != "Control") #this would give also exposure
exposure <- subset(ex32data, exposure == "Exposure")


# 2.32 Descriptive statistics long way
mean(control$iqv)
mean(exposure$iqv)
sd(control$iqv)
sd(exposure$iqv)

# descriptive statistics long way
mean(control$performance)
mean(cexposure$performance)
sd(control$performance)
sd(cexposure$performance)

#easier and faster alternative
describe(control)
describe(exposure)


# 2.32 plot graphic data. GGplot for ample asthetics
library(ggplot2)
ggplot(ex32data, aes(x = exposure, y = iqv, fill = exposure))+
  geom_boxplot()
# 2.32 boxplot as in class 
boxplot(ex32data$iqv ~ ex32data$exposure, ylab = "verbal IQ", xlab = NULL, main= "Verbal IQ vs Lead Exposure")

