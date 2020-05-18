# dim 차원 
#
# list
# factor
# matrix
# data frame

# & 와 &&, | 와 || 차이
#
vt <- c( TRUE, FALSE )
vt2 <- c( TRUE, FALSE )

vt & vt2    # 백터 요소 각각에 대하여 AND 연산 수행
vt && vt2   # 벡터 첫번째 요소에 대하여 AND 연산 수행

#
# () 와 [] 차이
#
#() 연산식에서 우선순위 변경 목적, 함수에서 인수전달 목적
#[] 백터, 리스트, 매트릭스, 데이터프레임에서 요소를 지정하는 목적 요소지정


#
# vector
#
v <- 1:10

v > 5
all( v > 5 )    # 백터의 모든 요소가 조건에 만족하는가?
any( v > 5 )    # 백터의 요소중 조건에 만족하는게 있는가?

head( v )       # 처음부터 일정 개수 ( default 6개 )
tail( v )       # 끝에서부터 일정 개수 ( default 6개 )
head( v, 3 )
tail( v, 3 )

x <- c( 1, 2, 3 )
y <- c( 3, 4, 5 )
z <- c( 3, 2, 1 )

union( x, y )  # 합집합  # 집합은 중복데이터를 허용하지 않는다 
intersect( x, y )  # 교집합 
setdiff( x, y )  # 차집합 
setequal( x, y )  # 동일한 요소가 있는가 확인 

#
# set ( 집합 ) : 중복데이터가 없는 백터 - 파이썬 R은 백터 
#

#
#list
#
# LIST : 동일 자료형, 다른 자료향을 저장할 수 있는 백터
#
# list() : list 생성 함수 1차원 요소는 key( 이름 ) = value( 값 ) 형식이다. 
v <- c( 90, 85, 70, 84 )
l <- list( name = 'hong', age = 30, status = TRUE, score = v)
l

# $ 값 

l[ 1 ]
l[ 4 ]

l[[ 1 ]]
l[[ 4 ]]
l[[ 4 ]][ 1 ]

l$name
l$score

# list 반드시 동일 자료 ㄴㄴ 사용 요소 값 접근 할 때 l[[]][] 사용 논리적으로 이해하자 이름으로 접근 $, 연산자 >, <


#
# factor( 범주형, categorical )
# factor 형 : 문자 형태를로 저장되며 범위를 갖는 값을 지정 범위가 있는 값
# 저장하는 data type
# factor() 팩터형 백터 생성 함수 

bt <- c( "A", "B", "B", "O", "AB", "A" )  # 문자형 백터
bt.factor <- factor( bt )  # 팩터형 백터 levels 잘 보기 

bt
bt.factor

gender <- c('남', '여', '여', '남', '남', '여', '여' ) 

gender.factor <- factor( gender )

gender
gender.factor


bt[ 3 ]
bt.factor[ 3 ]


gender[ 5 ]
gender.factor[ 5 ]


levels( bt.factor )
levels( gender.factor )

as.integer( bt.factor )
as.integer( gender.factor )

gender.factor[ 5 ]
gender.factor[ 5 ] <- '중'
gender.factor

# warning 상황에 따라 에러가 난다

#
# matrix
#
# matrix ( 행렬, 2차원 배열 ) : 동일 자료형의 데이터를 저장 하는 백터 집합
#행렬 - 관측치
# row( 행 ), observation(  관측값 ), data
# column( 행 ), variable( 변수 ) 구성하는 변수가 중요중요 

#
# : 백터
#
z <-  matrix( 1:20, nrow = 4 )
z
class( z )
str( z ) # 타입, 값 앞 - 행 뒤 - 열
dim( z ) # 차원 앞 - 관측치 뒤 - 변수 매트릭스 

# 열을 먼저 채움 - 열 우선




z <- matrix( 1:20, nrow = 4, ncol = 5 )
z


z <- matrix( 1:20, nrow = 4, ncol = 5, byrow = T ) # 행 우선
z
# 기본은 열 우선으로 채워준다.



x <- 1:4
y <- 5:8
z <- matrix( 1:20, nrow = 4, ncol = 5 )

n1 <- cbind( x, y ) # 변수로 봤다 
n1
n2 <- rbind( x, y ) # root, # 관측치 
n2

n3 <- rbind( n2, x )
n3
n4 <- cbind( z, x ) # 변수 추가 
n4

#
# matrix에서 cell의 값 읽기

z[ 2, 4 ]
z[ 1, 4 ]
z[ 2, ] # 행 전체
z[ ,4 ] # 열 전체

z[ 2, 1:3 ] # 
z[ 1, c( 1, 2, 4 )]
z[ 1:2, ]
z[ , c( 1, 4 )] # 2개 이상 여러개 줄 경우 백터 사용 어려우면 그리면서 이해하기 



#
# matrix 행/열에 이름 정하기 변수가 같아야한다
#
score <- matrix( c( 90, 85, 69, 78, 85, 96, 49, 95, 90, 80, 70, 70 ), nrow = 4, ncol = 3 ) # 4행 3열 
score

rownames( score ) <- ( c( 'hong', 'kim', 'lee', 'yoo' )) # 행이름 관측치 
colnames( score ) <- ( c( 'english', 'math', 'science' )) # 열이름 변수
score

score[ 'hong', 'math' ] # 행, # 열
score[ 'kim', c( 'math', 'science' )] # 백터가 나옴
score[ 'lee' ]
score[ , 'english' ]

rownames( score ) # 백터
colnames( score ) 
colnames( score )[ 2 ] # 백터니까 인덱스 부여 가능 


c <- colnames( score )
c[ 2 ]

#
# data frame
#
# data frame : matrix와 동일한 구조를 갖으며 자료형에 구애 받지않고 저장하는 matrix 타입 허용 
#
city <- c( 'seoul', 'busan', 'daejeon' ) # 백터 
rank <- c( 1, 2, 3 ) # 숫자 백터 
city.info <- data.frame( city, rank ) # 변수의 자료가 다르다 obs 관측치 갯수
city.info

class( city.info )
str( city.info )
dim( city.info )

name <- c( 'hong', 'kim', 'lee' )
age <- c( 22, 20, 25 )
gender <- factor( c( 'm', 'f', 'm' ) )
blood.type <- factor( c('a','o', 'b' ) )

person.info <- data.frame( name, age, gender, blood.type )
person.info

str( person.info ) # 각각의 변수 타입을 자세히 알 수있다 



#
# data frame 요소 읽기
#
city.info[ 1, 1 ]
city.info[ 1, ]
city.info[ , 1  ]
city.info[ city.info$city ]
city.info[ city.info$city == 'seoui', ]
city.info[ , 'rank' ]

person2.info <-  data.frame( name = c( 'hong', 'kim', 'lee' ), age = c( 22, 20, 25 ), gender = factor( c( 'm', 'f', 'm' ) ), blood = factor( c( 'a', 'o', 'b' ) ) )
                             
person2.info


person.info$name

person.info[ person.info$name == 'hong', ]
person.info[ person.info$name == 'hong', c( 'name', 'age' ) ]

# 변수중요 

data()


iris # 보사해서 사용하기 
head( iris )
tail( iris )

class( iris )
str( iris )
dim( iris )
# 변수 타입을 알아보고싶으면 str 확인

iris[ , c( 1:2 ) ]
iris[ , c( 1, 3, 5 )] # 1, 3 , 5 변수 
iris[ , c( 'Sepal.Length', 'Species' )] #변수명 사용 
iris[ 1:5, ] # 다섯개의,데이터를 출력해라 5개의 관측치 
iris[ 1:5, c( 1, 3 )] # 5개의 관측지 중 1, 3 출력해라




#
# matrix / dataframe 에서 사용하는 함수
#
class( state.x77 )
class( iris )

dim( state.x77 )
dim( iris )

str( state.x77 ) # 미국
str( iris )

nrow( state.x77 ) # 행의 수 
nrow( iris )

ncol( state.x77 ) # 열의 수
ncol( iris )

head( state.x77 ) # 정하지 않으면 기본적으로 6개 나온다 
head( iris )

tail( state.x77 )
tail( iris )


unique( iris [, 5 ] ) # 중복을 배제한 값 중복데이터가 많을 때 사용, 문자열, 종류, 숫자타입 x

table( iris[ , 5 ] ) # 묶음이 가능한거 범주형, 셀 수 있는거 팩터타입 그룹형 
table( person.info[ , 'blood,type' ] )
table( person.info[ , 'gender' ] )

#
# matrix / data frame 산술 연산 함수
#
colSums( iris[ , -5 ] ); apply( iris[ , 1:4 ], 2, sum )  # 열별 합
colMeans( iris[ , -5 ] ); apply( iris[, 1:4 ], 2, mean ) # 열별 평균
rowSums( iris[ , -5 ] ); apply( iris[ , -5 ], 1, sum )  # 행별 합
rowMeans( iris[ , -5 ] ); apply( iris[, -5 ], 1, mean ) # 행별 평균
apply( iris[ , -5 ], 2, median )  # 열별 중앙값 


sx <- state.x77
head( sx )
sx.t <- t( sx ) # t 함수가 행과 열 방향 전환, 전치 복사해서 사용해
head( sx.t )
# 전치행렬


# ★ 조건에 맞는 행과열 추출 ( data frame만 가능)

subset( iris, Species == 'setosa' )
subset( iris, Sepal.Length > 5.0 & Sepal.Width > 4.0 )

subset( iris, Sepal.Length > 5.0 & Sepal.Width > 4.0 )[ , c( 2, 4 ) ]


#
# matrix / data frame 산술연산
#
n1 <- matrix( 1:20, 4, 5 )
n1
n2 <- matrix( 21:40, 4, 5 )
n2

2 * n1
n2 - 5
2 * n1 + 3 * n2

n1 + n2
n2 - n1
n2 / n1
n1 * n2

#
# matrix를 data frame으로, data frame을 matris로 변환
#
st <- data.frame( state.x77 )
class( st )
str( st )
dim( st )

iris.m <- as.matrix( iris ) # as는 변환 함수 
class( iris.m )
str( iris.m )
dim( iris.m )


# data type 확인 함수 
is.matrix( state.x77 )
is.matrix( iris.m )
is.data.frame( st )
is.data.frame( st )


# R의 data type : 숫자, 문자, 논리, factor, NULL, NA
# R에서 data 저장에 사용되는 요소 변수
# 1차원 배열 - vector, list
# 2차원 배열 - matrix, data frame


#
#데이터 읽기
#
#csv file 내용 읽어서 dara frame 생성
#
air <- read.csv( 'C:\\Workspace\\WorkspaceR\\airquality.csv', header = T ) # csv comma seperator value
air2 <- read.csv( 'C:\\Workspace\\WorkspaceR\\airqulity.csv', header = F )

class( air )
class( air2 )

str( air )
str( air2 )

dim( air )
dim( air2 )

air
air2



