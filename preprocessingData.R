library(dplyr)
exam <-read.csv("csv_exam.csv")
View(exam)
dim(exam)
head(exam,10)

# 조건, 행 데이터 추출 filter
filter(exam, class==1)
exam %>% filter(class==1)
exam %>% filter(class!=1)
exam %>% filter(science>=70 & math>80)
exam %>% filter(science>=70 | math>80)

exam %>% filter(class==1 | class==3| class==5)
exam %>% filter(class %in% c(1,3,5))

class1 <- exam %>% filter(class==1)
class1
class2 <- exam %>% filter(class==2)
class2
mean(class1$math)
mean(class2$math)

# <, <=, >, >=, ==, !=, |, &, %>%

# select() 열(변수)추출
exam %>%
  select(math)
exam %>% 
  select(math, science)
exam %>% 
  select(-math)
exam %>% 
  select(-math, -science)
exam

exam %>% 
  filter(class==1) %>% 
  select(id, math)


exam %>% 
  select(id, math) %>% 
  head

exam %>% 
  select(id, math) %>% 
  head(1)


#정렬 arrange
exam %>%
  arrange(math)

exam %>%
  arrange(desc(math))

exam %>%
  arrange(class, math)

exam %>%
  arrange(desc(class), math)

exam %>%
  arrange(desc(class), desc(math))

#변수추가
exam %>%
  mutate(total = math+english+science) %>%
  head(1)

exam %>%
  mutate(total = math+english+science, mean=(math+english+science)/3) %>%
  head(10)



exam %>%
  mutate(test=ifelse(math>=70,"pass","fail")) %>%
  head(10)

exam

exam %>%
  mutate(total = math+english+science) %>%
  arrange(total)%>%
  head(1)

exam




#그루핑
exam %>%
  summarise(math_mean=mean(math))

exam %>%
  group_by(class) %>%
  summarise(math_mean = mean(math))

exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math),
            sum_math = sum(math),
            median_math=median(math),
            n=n())

#n -> 각 그룹의 개수

# mean(): 평균, sd(): 표준편차, sum(), median(), min(), max(), n()
exam %>%
  


