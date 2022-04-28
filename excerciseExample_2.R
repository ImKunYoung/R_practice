
#파생변수

#ggplot2의 mpg데이터
#n US Environmental Protection Agency의 1999년에서
#2008년사이의 미국 출시 자동차 234종의 연비정보
library(ggplot2)
mpg<-as.data.frame(ggplot2::mpg)
View(mpg)
head(mpg,10)

# E.g., qplot(data = mpg, x = hwy)
# E.g., qplot(data = mpg, x = drv, y = hwy, geom = “line”)
# E.g., qplot(data = mpg, x = drv, y = hwy, geom = “boxplot”, colour = drv)

#빈도 막대 그래프프 // x축의 변수 이르믕ㄴ hwy (연비)
qplot(data=mpg, x=hwy)

# 전륜 구동의 차 연비가 가장 좋음음
qplot(data=mpg, x=drv, y=hwy, geom="line")


# . -> 주로 이상치인 경우가 많음
qplot(data=mpg, x=drv, y=hwy,geom="boxplot",colour=drv)


#요약
summary(mpg$hwy)
str(mpg$hwy)
str(mpg)


#변수 이름 바꿈
install.packages("dplyr")
library(dplyr)

df_example<-data.frame(var1=c(30,40,50), var2=c(70,60,50))
df_example

df_example<-rename(df_example, variable1 = var1)
df_example

#(변수값을 또 계산)
df_example_sum<-df_example$var1+df_example$var2
df_example_sum

#파생변수 (변수값을 또 계산)
df_example$sum<-df_example$var1+df_example$var2
df_example




#연비 평균 계산 (cty+hwy)/2
summary(mpg)
str(mpg)

df_example2<-data.frame(cty=mpg$cty,hwy=mpg$hwy)
df_example2

summary(df_example2)
str(df_example2)
View(df_example2)



mpg$avg<-(mpg$cty+mpg$hwy)/2
head(mpg,20)

#파생변수
mpg$eval<-ifelse(mpg$avg>=20,"pass","fail")
head(mpg,20)

#중첩조건문
mpg$grade<-ifelse(mpg$avg>=30,"A",ifelse(mpg$avg>=20,"B","C"))
View(mpg)
