
# 1.
install.packages("ggplot2", dependencies = T)
install.packages("dplyr", dependencies = T)
library(ggplot2)
library(dplyr)

midwest<-as.data.frame(ggplot2::midwest)


# 1(1)
midwest <- midwest %>% 
  mutate(전체인구대비미성년인구백분율=(poptotal-popadults)/poptotal*100)
  

# 1(2)
midwest %>% 
  arrange(desc(전체인구대비미성년인구백분율)) %>% 
  select(county, 전체인구대비미성년인구백분율) %>% 
  head(5)


# 1(3)
midwest <- midwest %>% 
  mutate(gradeyouth = ifelse(전체인구대비미성년인구백분율 >= 40 ,"large",
                             ifelse(전체인구대비미성년인구백분율 >= 30,"middle","small")))
table(midwest$gradeyouth)
ggplot2::qplot(midwest$gradeyouth)

# - large 등급에는 32개 지역, middle 등급에는 396개 지역, small 등급에는 9개 지역이 있습니다.



#1(4)
midwest <- midwest %>% 
  mutate(전체인구대비아시아인인구백분율 = popasian/poptotal*100)

midwest %>% arrange(전체인구대비아시아인인구백분율) %>% 
  select(state, county, 전체인구대비아시아인인구백분율) %>% 
  head(10)
