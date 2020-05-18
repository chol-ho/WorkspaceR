# 제어구조( 순차 선택 ), 알고리즘
#
# 자료 절차 분석
# 
# 범주, 연속
#
# 문제정의
# 자료수집
# 자료 전처리
# 자료 탐색 

# 자료 탐색이 과제
# 
#
# 25메가 넘으면 분활해서 올라감
#
#
# text file 읽기

setwd( ) # 경로변경
setwd( "C:\\Workspace\\WorkspaceR" ) # 파일 저장 경로 설정
df <- read.table( file = " airquality.txt ", header = T )
df

class( df )



# \: 반드시 2개 써야한다



#
# excel 파일 읽기
#
install.packages( "xlsx" ) # excel 파일 읽기
install.packages( "rjava" ) # java 실행

# 기본 패키지 외에 설치된 패키지 사용 library load
#
#

library( rJava ) 1 # 순서 바뀌면 안됨
library( xlsx )  2

setwd( "C:\\Workspace\\WorkspaceR" )
df.xlsx <- read.xlsx( file = "airquality.xlsx", 
                      sheetIndex = 1, 
                      encoding = "UTF-8")
df.xlsx



df.xlsx
class( df.xlsx )
str( df.xlsx )
head( df.xlsx )
tail( df.xlsx )
dim( df.xlsx )


score <- c( 99, 84, 75, 80, 96, 6, 71, 88, 56, 11 )
which( score == 96 ) # 조건에 만족하는 위치의 index
which( score >= 88 )
max( score )

which.max( score )
min( score )
which.min( score )

idx <- which( score >= 71 )
score[ idx ]
score

idx <- which( df.xlsx[ , 1:2 ] =="NA", arr.ind  = TRUE ) # arr.ind = 해당 조건의 참/거짓값을 확인할 때 
idx


