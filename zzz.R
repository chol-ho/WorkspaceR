#
# 2일차 R Script 실습
#

# 1. 값을 이용한 계산
class( 3 )
class( 5 )
3 + 5
print( 3 + 5)
#
# 일반적인 출력 장치를 표준 출력
# 하고 하며, 장치 지정을 하지 않아도
# 자동으로 시용되는 장치를 의미한다.
#
# stdout( 표준 출력 장치 ) : 모니터
# stdin( 표준 입력 장치 ) : 키보드
# stderr( 표준 error 표시 장치 ) : 모니터
# 

rint( 10 + 5 ) # 덧셈
print( 10 - 5 ) # 뺄셈
print( 10 * 5 ) # 곱셉
print( 10 / 5 ) # 나눗셈
print( 10 %% 5 ) # 나머지
print( 10 ^ 5 ) # 제곱

#
# 변수 ( variable )
# : 메모리 영역에 대한 이름
# : 값을 저장하는 메모리 영역
#
number10<- 10
number2 <- 8
print( number1 + number2 )
print( number1 - number2 )
print( number1 * number2 )
print( number1 / number2 )
print( number1 %% number2 )
print( number1 ^ number2 )




log( 10 ) + 5  # 로그 함수
sqrt( 25 )  # 제곱근 함수
max( 5, 3, 2 )  # 최대값 구하는 함수
min( 5, 3, 2 )  # 최소값 구하는 함수
abs( -5 )  # 절대값 구하는 함수
factorial( 5 )  #팩토리얼 함수
sin( pi / 2 )  # 삼각 함수 
cos( pi / 2 ) # 삼각 함수
tan( pi / 2 )  # 삼각 함수

var1 <- 10
var2 <- 50
var3 <- 15 * 25
var4 <- var1 / var2
print( var1 )
print( var2 )
print( var3 )
print( var4 )

var5 = 10 * 9
print( var5 )


#
# 자료형 ( Date Type)
# : 값에 대한 형태
#
number <- 10
string <- "R Script"
boolean <- TRUE
temp <- NULL

# str() :변수의 내용(type, 값) 확인 함수
class( number ); str( number )
class( string ); str( string )
class( boolean ); str( boolean )
class( temp ); str( temp )

missing <-  NA    # NA : 결측치 ( missing value)
chrnum <- '10'    # 영숫자

class( missing ); str( missing )
class( chrnum ); str( chrnum )

#
# Date Type 확인 / 변환
#
number <- 150
chanum <- '10'

class( number )
class( chanum )

# is로 시작하는 함수 : 결과 논리값 숫자인가 문자인가 
is.numeric( number )
is.numeric( chanum )


is.character( number )
is.character( chanum )

# as로 시작하는 함수 : 형 변환 함수
result <- number + as.numeric( chanum )
class( result ); str( result )
print( result)

# Vector( 백터 ) : 동일한 자료형 값의 집합
#                : 1차원 배열, 열의 집합 이라고도 한다. c 다음에 값을 넣어준다 c백터를 생성하는 함수 
# c() connect의 약자로 백터 생성 함수

vector <- c( 1, 3, 5, 7, 9 )
vector2 <- c( 'hello', 'world', 'R Script' )
vector3 <- c( TRUE, FALSE, TRUE, TRUE )

class( vector ); class( vector2 ); class( vector3 )
str( vector ); str( vector2 ); str( vector3 )
print( vector ); print( vector2 ); print( vector3 )


vector4 <- c( 1, 2, 3, '4', '5', '6' )  # 영숫자고 에러가 안나는 이유가문자로 바뀜 문자와 숫자로 사용할 때 좋은 방법 아님 
class( vector4 )
str( vector4 )
print( vector4 )


# imolcit
# explcit


#
# 연속값을 저장하는 백터
#

vector5 <- 1:10
vector6 <- c( 1, 2, 3, 5:10 )

print( vector5 )
print( vector6 )

# 연속적일때 : 

vector_tc <- c(1, 2, TRUE, FALSE )
class( vector_tc )
str( vector_tc )
vector_tc

vector7 <- seq( 1, 101, 3 ) # 간격 
vector8 <- seq( 0.1, 1.0, 0.1 )
vector9 <- rep( 1, times = 5 ) # 반복 times만큼 
vector10 <- rep( 1:5, times = 3 )
vector11 <- rep( c( 1, 5, 9 ), times = 3 ) # 응용도 가능 

vector7
vector8
vector9
vector10
vector11


#
# 백터 원소값에 이른 지정
#
score <- c( 90, 85, 70 )
score
names( score ) # 이름 이름을 부여할 때 반드시는아니지만 알아두면 좋은거 
names( score ) <- c( 'hong', 'kim', 'lee')
names( score )
score


# 백터 안에 있는 숫자 원소(요소)값 index 시작은 0부터


#
# 백터 길이
# 
length( score )

# 백터 요소 읽기
score[ 1 ]
score[ 'kim' ]
score[ 2 ]


#
# 백터 요소 쓰기
#
score
score[ 1 ] <- 55 # 이름 지정할때만 가능 
score

score[ 'lee' ] <- 77
score


#
# 백터 요소 한 번에 여러개 추출 # 백터일때만 []사용 잘라서 이해 
#
v <- c( 1, 4, 3, 7, 8 )

v[ c( 1, 3, 5) ]
v[1:3]
v[ seq( 1, 5, 2)] # 시작 간격 끝 (값)
v[ -2 ] # 2번째를 뺴라 
v[ -c( 3:5) ] # 3, 5 빼기 


v[ c( 1, 3, 5) ] <- 5
v
v[ -2 ] <- 100
v

#
# 백터간 연산
#
x <- c( 1, 2, 3 )     
y <- c( 4, 5, 6 )    
x + y    # 백터 합 계산
x * y    # 백터 곱 계산 
z <- x + y
z

# 두 백터간 거리가 동일해야 한다 합, 곱만 구한다

#
# 백터에 적용 가능한 함수
#
v <- c( 1:10 )

sum( v )  # 합계 
sum( 2 * 8 )
mean( v )
mean( v[ 1:5] )  #평균 
median( v )   # 중앙값 # 왜곡 덜 함 
median( v[ 1:5 ])
max( v )  # 최대값 
min( v )  # 최소값 
sort( v )  # 정렬 
sort( v, decreasing =  FALSE ) # 오름 
sort( v, decreasing =  TRUE ) # 내림 
range( v )  # 값의범위 ( 최소값 - 최대값 )
var( v ) # 분산 
sd( v ) # 표준편차 

avg <- sum( v ) / length( v )
avg


#
#관계 / 논리연산
# 관계 연산자 : >, <, >=, <=, ==, !=
# 논리연산자 : %%, %( AND ), ||, |( OR ), !( NOT )
#
number1 <- 10
number2 <- 19
number3 <- 3

# 관계 연산자 이용한 관계 연산
number1 > number2
number1 <= number2

# 관계/논리 연산자 이용한 논리 연산 
( number1 > number2 ) %% ( number1 > number3 )  # 논리연산 : AND
( number1 > number2 ) || ( number1 > number3 )  # 논리연산 : OR

#
# 관계 연사자를 백터에 이용
#
v <- 1:10

v >= 5 # 하나하나
v[ v > 5]
sum( v > 5 ) # 0, 1
v == 5  

condition <- v > 5 & v < 8
condition
v[ condition ]


