#
# Review
#
# 변수명 / 표준입력 / 표준 출력
#
#변수명 부여 방식
numberValue <- 1  # camel 표기법
str_Value <- "R Language"  # snake 표기법 '_' 많이 사용 
boolenvalue <-  TRUE  # 일반 표기법 의미 전달이 힘듬


#
# 표준 출력 방식
#
# print() : 자동 줄 바꿈( \n, 자동 개행 )
numberValue; print( numberValue )  # print는 1개 밖에 못쓰고 자동 줄 바꿈이다 
str_Value; print( str_Value )
boolenvalue; print( boolenvalue )

# 일관적이게 하기!
# 변수명은 명사 위주 정확하고 유추가능하게 표현하기
# 헝가리 표현법 첫글자는 대문자에 타입 정함
# 변수명시작은 소문자

#
# cat() : 여러내용을 추력할 수 있고 자동 줄바꿈이 일어나지 않은 표준 출력 장치에 출력하는 함수
#
# 제어 문자 : 화면에 출력되지 않고 기능을 수행하는 문자 화면에 출력 ㄴㄴ 동작만 
# \n : 개형 문자( 줄 바꿈 )
# \t : tab 문자 

cat( 'Numeric number : ', numberValue, '\n' )
cat( 'String : ', str_Value, '\n' )
cat( 'Boolean vaiue : ', boolenvalue, '\n' )
print( '-----------------------------------' )
cat( ' Numeric number : ', numberValue, '\t', ' String : ', str_Value, '\t', 'Boolean value : ', boolenvalue, '\n' )
cat( 'test' )


#
# 표준 입력 장치로 부터 입력
#
# scan() :  표준 입력 장치로 부터 입력 받은 함수 list 
# readline() 표준 입력 장치로 부터 입력 받은 함수 기본적으로 문자 
# edit() : 표준 입력 장치로 부터 포함식으로 입력 받은 함수
# 새로운 함수가 나오면 검색 ㄱ
# 표준 출력 장치 stdout
# 표준 입력 장치 stdin
# 표준 에러 장치 stderr

inputData <- scan() : # 빈줄이 입력될때 까지 숫자를 입력 받는다
class( inputData )
inputData


inputData <- scan( what = character() ) # 문자 입력시
class( inputData )
inputData

inputData <- readline( 'input data -> ' )
class( inputData )
inputData


number1 <- readline( 'input number1 : ' )
number2 <- readline( 'input number2 : ' )
result <- as.numerice( number1 ) + as.numeric( number2 )
# result <- number1 + number2
result



#
# 실습 문제 : 두 수를 입력 받아서 다음과 같이 출력
#
# 입력
# input number1 : [ 10 ]
# input number2 : [ 5 ]
#
# 출력 결과 out 
# 10 + 5
# 10 - 5
# 10 * 5
# 10 / 5
# 10 %% 5

number1 <- readline( 'input number1 : ' )
number2 <- readline( 'input number2 : ' )

number1 <- as.numeric( readline( 'input number1 : ' ) )
number2 <- as.numeric( readline( 'input number2 : ' ) )

resultAdd <- number1 + number2
resultSub <- number1 - number2
resultMul <- number1 * number2
resultDiv <- number1 / number2                                   
resultRem <- number1 %% number2

cat( number1, ' + ', number2, ' = ', resultAdd, '\n',
     number1, ' - ', number2, ' = ', resultSub, '\n',
     number1, ' * ', number2, ' = ', resultMul, '\n',
     number1, ' / ', number2, ' = ', resultDiv, '\n',
     number1, ' %% ', number2, ' = ', resultRem, '\n' )



#
# 알고리즘
# Algorithm( Logic ) : 문제를 해결하기 위한 일처리 순서
#
# Algorithm 요건
# 1. 입력 : 반드시 0개 이상의 입력이 있어야 한다. 없어도 된다 
# 2. 출력 : 반드시 1개 이상의 출력이 있어야 한다. 반드시 있어야한다 
# 3. 유한성 : 반드시 끝낼 수 있어야 한다. 반드시 끝나야한다.
# 4. 효과성 : 효과적인 방법으로 정의되어야 한다. 현실성이 있어야한다 
# 5. 명확성 : 명확한 방법으로 정의되어야 한다. 컴퓨터 구조상에 있는 구조로 해결해야 한다 
#
# 컴퓨터 프고그램의 구조
# - 순차 구조 : 시작부터 끝날때 까지 차례대로 수행
# - 선택 구조 : 조건에 따라 처리 방향을 바꾸어서 수행
# - 반복 구조 : 조건이 만족하는 동안 동일한 내용을 반복 수행
#
# 컴퓨터 프로그램은 알고리즘에 기반으로 기억장소원리와 순차/선택/반복구조를 조합하여 작성한다. 순서대로 나오지 않을 수 있지만 기본구조 
# 
# 실습한 것은 순차 
# 위에서 아래 좌에서 우 어제 5/14는 기억장소 원리만 사용 
# 경우에 따라 알고리즘이 필요할 때가 있다.
#
#

#
# 선택 구조
#
# 선택구조: 조건에 따라 방향을 결정하는 구조

# 선택구조 종류
# 1. 단순 선택
# 2. 양자 택일
# 3. 다중 선택
# 4. 중첩 선택
#
# 1. 단순 선택
# 자주 사용하는 if 영어 의미 생각 괄호 꼭 사용
# {} : code block ( code 집합 ) - 참, 거짓 할 때 사용
job.type <- 'A'
bonus <- 0
if ( job.type == 'A' ) { bonus <- 200 }
cat( 'job,type : ', job.type, '\t\tbonus : ', bonus )


#
# 양자 택일 구조 둘 중에 1개
#
job.type <- 'A'
bonus <- 0  # 누적할 때 
if ( job.type == 'A' ) { bonus <- 200 } else{ bonus <- 100 }  # 거짓일 때 else ( 둘 중에 하나 그리고 이어서 사용하기 외워서 사용하기 )
cat( 'job,type : ', job.type, '\t\tbonus : ', bonus )


#
# 다중 선택 구조
#
score <- 50
if ( score >= 90){ grade <- 'A' } else if ( score >= 80 ){ grade <- 'B' } else if ( score >= 70) { grade <- 'C' } else if ( score >= 60 ) { grade <- 'D' } else { grade <- 'F' }
cat( 'score : ', score, '\t\tgrade : ', grade )

# else if는 이중에 하나 만족해야 한다 조건중 여러개 일때 




#
# 중첩 선택 구조 안 나오도록 해야한다 
#
a <- 2
b <- 1
c <- 3

number <- 10
remainder <- number %% 2
if ( remainder == 0 ) { oddeven <- '짝수' } else { oddeven <- '홀수' } 
cat( 'Number : ', number, '는', oddeven, '이다.' )

# if ( number %% 2 == 0 ) 직접 조건식을 넣어도 된다 

a <- 5
b <- 20
if ( a > 5 & b > 5 ) { cat( a, '>5 and ', b, ' >5 ' ) } else { cat( a, ' <= 5 or ', b, ' <= 5 ' ) }


a <- 8; b <- 5; c <- 10; max <- a
if( b > max ) { max <- b } if ( c > max ) { max <-  c } 
cat( 'a = ', a, ' b = ', b, ' c = ', c, 'max = ', max )


a <- 8
b <- 5
c- 10
mid <- a
if ( a < mid ) { a < mid } if ( b < mid ) { b < mid } if ( c < mid ) { c < mid }
cat( 'a = ', a, ' b = ', b, ' c = ', c, 'mid = ', mid )





# 실습
# 하나의 숫자을 입력 받아 홀수인지를 출력

number1 <- as.numeric( readline( 'Input number1 : ' ) )
if ( number1 %% 2 == 0 ) { cat( number, '는 짝수입니다' ) } else { cat( number, '는 홀수입니다' ) }






# 실습
# 하나의 숫자를 입력받아 3의 배수면 " 3의 배수 " 5의 배수면 " 5의 배수 " 3, 5의 배수가 아니면 " 3, 5의 배수가 아닙니다" 

number <- as.numeric( readline( 'input number: ' ) )
if ( number %% 3 == 0 ) { cat( number, '3의 배수입니다' ) } else if( number %% 5 == 0 ) { cat( number, '5의 배수입니다' )} else { cat ( number, '는 3, 5의 배수가 아닙니다' ) }

# mulitip 







# 반복구조 : 조건이 만족하는동안 동일한 내용을 반복 수행
#
# 1. 반복 횟수가 정해진 경우 : for
# 2. 반복 횟수가 정해지지 않은 경우 : while
#
for ( i in 1:10 ) { print( '*' ) }    # i 만큼 변한다
for ( i in 1:10 ) { cat( i, '' ) }

# for문 : for ( [ 반복제어변수] in [반복범위] ) {}

multiple = 2
for( i in 2:9 ) { cat( multiple, ' * ', i, ' = ' , multiple * i, '\n' ) }  # 




for( i in 2:9 ) { for( j in 1:9 ) { multiple = i * j } cat( multiple, '\t' ) }

#
# 반복 제어 변수 초기화 
# while ( 반복 제어 변수 조건 검사 ) { 반복 제어 변수 값 변경 }
#
i = 1 # 반복 제어 변수 초기화
while ( i <= 10 ) { print( ' * ' ) # 반복 제어 조건 검사, 참인동안 반복
     i <- i + 2 } # 반복 제어 변수 값 변경, 누락 i + 숫자 만큼 반복한다

i <- 2
while( i <= 9 ) {
     j <- 1
     while( j <= 9 ){
          multiple = i * j
          cat( multiple,'\t' )
          j <- i + 1
     }
     i <- i + 1
}


# 함수
#
# 함수 ( Function ) 단위기능을 수행하는 코드 집합
#
# 함수 종류
# 1. 내장 함수 : R에 미리내장된 함수 ( 기본 함수 )
# 2. 3rd party 함수 : 제 3자가 작성하여 배포한 함수
# 3. 사용자 정의 함수 :사용자가 직접 정의한 함수

# 함수 형식
# 함수 이름(명) <-  function ( 인수 목록 ) {
# 함수 내용에 해당하는 코드 집합
# return ( return 값 )
# }
#
#  함수 호출
# 함수명 ( 인수 목록 ) 호출보다 정의가 먼저 나와야 한다

# 함수 정의
multiple <- function( x ) { for( i in 1:9 ) { multiple <- x * i 
cat( x, ' * ', i, ' = ', multiple, '\n' ) } }

# 함수 호출
multiple( 2 )

# retutn 값이 있는 경우 
mymax <- function( x, y ) {
        num.max <- x
        if( y > num.max ) {
                num.max <- y
        }
        return( num.max )
}

mymax( 5, 6 )

a <- 10; b <- 5; c <- 8
max <-  mymax( a, b ); max <- mymax( max, c )
max


# return값이 여러개인 함수

myCalc <- fuction( x, y ) {
        add <- x + y
        sub <- x - y
        mul <- x *y
        div <- x / y
        rem <- x %% y
        
        return( list( ret.add = add, ret.sub = sub, ret.mul = mul, ret.div = div, ret.rem = rem ) )
        
}

result <-  myCalc( 10, 5 )
cat( '10 + 5 = ', result$ret.add, '\n' )
cat( '10 - 5 = ', result$ret.sub, '\n' )
cat( '10 * 5 = ', result$ret.mul, '\n' )
cat( '10 / 5 = ', result$ret.div, '\n' )
cat( '10 && 5 = ', result$ret.rem, '\n' )



myCalc <- fuction( x, y ) { 
        result <- c( x + y, x - y, x * y, x / y/ x %% y )
return( result ) }

myCalc2( 10, 5 )