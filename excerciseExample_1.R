#ggplot2의 mpg 데이터의 drv변수는 자동차의
#구동방식 (f, r, 4)을 나타냄. 이 데이터를 이용하여
#다음을 답해 보시오

mpg <-as.data.frame(ggplot2::mpg)
mpg
View(mpg)
dim(mpg)
head(mpg)

#drv -> 전륜 or 사륜 or 후륜 여부

# drv 변수의 타입은?
class(drv)
class(mpg$drv)

#drv 변수를 적절한 함수를 이용해 factor타입으로 변환
#후 다시 타입을 확인하시오
mpg$drv <- as.factor(mpg$drv)
class(mpg$drv)
#drv가 어떤 범주로 구성되었는지 알아보시오
levels(mpg$drv)
