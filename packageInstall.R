#주석 작성법

#함수에 대한 도움말 help()
help("help")


#R은 대소문자 구분함

#패키지 설치 후에도 함수 작동하지 않을 때: 의존하는 패키지 역시 설치해야 함
install.packages("ggplot2", dependencies = T)
installed.packages()


#패키지 로드 함수: librarY()
library(ggplot2)
