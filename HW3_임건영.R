# 3
install.packages("ggplot2", dependencies = T)
install.packages("dplyr", dependencies = T)
library(ggplot2)
library(dplyr)



# 3(1)
midwests<-as.data.frame(ggplot2::midwest)
View(midwests)
dim(midwests) 
head(midwests,10)
str(midwests)
summary(midwests)
#### 해당 데이터 프레임은 437행과 28열로 이루어져있다.
#### 각종 지역과 함께 인구밀도, 인종, 성인/아이, 대학 등의 데이터가 나열되어있다.



# 3(2)
midwests <- rename(midwests, total = poptotal)
midwests <- rename(midwests, asian = popasian)



#3(3)
midwests$percent <- midwests$asian/midwests$total*100
hist(midwests$percent)
#### 전체 인구 대비 아시아 인구가 0~1%사이에 해당하는 도시들이 350 이상으로 가장 많으며
#### 그리고 전체 인구 대비 아시아 인구가 1.5%가 넘어가는 도시들은 다 합하여도 50개의 도시가 
#### 채 안된다.



#3(4)
mean(midwests$percent)
midwests$test <- ifelse(midwests$percent > mean(midwests$percent),"large","small")
View(midwests)



#3(5)
table(midwests$test)
ggplot2::qplot(data = midwests, test)
#### small에 해당하는 지역은 300개가 넘어가고 
#### large에 해당하는 지역은 100~150 사이 만큼 있다.