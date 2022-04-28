#Data Frame
#외부 데이터 불러오기
install.packages("readxl")
library(readxl)
df_exam<-read_excel("exam_score.xlsx")

#print
print(df_exam)
#or
df_exam


#외부데이터 불러오기
df_exam<-read_excel("exam_score.xlsx", sheet="exam_score")
df_exam

#csv파일 :: 데이터 분석 목적으로 담아논, file size가 excel에 비해 줄어듦
df_exam2 <-read.csv("exam_score.csv")
df_exam2

#데이터 프레임 보기 좋게 :View() 함수
View(df_exam)

#sample 보고 싶을 때 head(), tail()

head(df_exam)
head(df_exam,10)

tail(df_exam)

View(df_exam)

# 행열 개수
dim(df_exam)

#데이터의 내부 구조
str(df_exam)

# 각 변수의 특징
summary(df_exam)
#median(중위값)
# 1st Qu-> 1 사분위 (낮은 것부터 1분기 - 하위 25% (1분~2분기의 경계값))
