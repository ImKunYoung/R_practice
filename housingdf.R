install.packages("ggplot2", dependencies = T)
install.packages("dplyr", dependencies = T)
library(ggplot2)
library(dplyr)
housing.df <- read.csv("WestRoxbury.csv")
dim(housing.df)
head(housing.df)

housing.df[1:10, 1]
summary(housing.df)

# housing.df에 다섯가지 value를 random sample함
s<-sample(row.names(housing.df), 5) #row.names row의 일련 번호?
s
housing.df[s, ]

sampledata<-housing.df[s, ]
sampledata

#oversample house with over 10 rooms (10개 이상의 방을 가진 집은 적음 so oversampling)
s<- sample(row.names(housing.df), 5, prob = ifelse(housing.df$ROOMS>10, 0.9, 0.01))
housing.df[s,]


# 변수 파악
names(housing.df)

#세로로
t(t(names(housing.df)))
housing.df

colnames(housing.df)[1]

class(housing.df$REMODEL)
class(housing.df[,14])
levels(as.factor(housing.df[,14]))
housing.df[,14]



names(housing.df)
xtotal<-model.matrix(~0+BEDROOMS+REMODEL, data=housing.df)
xtotal



# dummy variable 만들기

xtotal$BEDROOMS[1:5]
xtotal <- as.data.frame(xtotal)
head(xtotal)


# 결측치 (강제로 결측치 만들기)
rows.to.missing <- sample(row.names(housing.df),10)
rows.to.missing
housing.df[rows.to.missing,]$BEDROOMS <- NA
housing.df[5533, ]

summary(housing.df$BEDROOMS)
housing.df[rows.to.missing,]$BEDROOMS<-median(housing.df$BEDROOMS, na.rm=TRUE)

#결측치가 있으면 계산되지 않음
median(housing.df$BEDROOMS)
#그래서 결측치를 제외하고 중위값을 내야함
median(housing.df$BEDROOMS, na.rm=TRUE)


#partitioning the data
train.rows <- sample(rownames(housing.df), dim(housing.df)[i]*0.6)
