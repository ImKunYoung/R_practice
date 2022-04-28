## 변수선언
a <-1
b<-9
print(a)
print(b)
print(a+b)


## 여러 값을 지닌 벡터 변수 만들기

# c 함수
b<-c(1,2,3,4,5,6)
print(b)

b<-c(1:9)
print(b)

b<-c("my","name","is","kunyoung")
print(b)

# seq 함수
c<-seq(12,100)
print(c)
class(c)

c<-seq(100,150,by=10)
print(c)
class(c)

# 숫자의 연산도 가능
print(a+10)
print(a)


##변수의 타입입

#연속변수 (numeric 타입)
x1<-c(1:10)
print(x1)

#범주변수 factor타입
x2<-factor(c(1:10))
print(x2)

#변수 타입 확인 class()함수
class(x1)
class(x2)
class(a)
class(b)

#factor변수 구성 범주 확인 level()함수
levels(x2)



##변수의 타입 변환

#변수의 타입 변환이 필요할 경우 함수를 사용
x2<-as.numeric(x2)
class(x2)
mean(x2) #평균
print(x2)

x2<-as.factor(x2)
class(x2)
print(x2)

print(as.numeric(x2))
print(x2)









