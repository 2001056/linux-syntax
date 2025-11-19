# 현재 위치 경로를 출력
pwd

# 현재 위치 파일 및 디렉토리(폴더) 목록 조회
ls 

# 목록 조회 자세히
ls -l

# 목록 조회 자세히, 숨김파일 까지
ls -al

# 목록 조회 자세히, 숨김파일, 오래된 순 정렬
ls -alrt

# 디렉토리(폴더) 생성
mkdir byeongchan_dir

# 특정 디렉토리(폴더)로 이동
cd byeongchan_dir

# 상위 디렉토리(폴더)로 이동 (cd ../)도 동일
cd ..

# 루트(최상위 디렉토리) 디렉토리(폴더)로 이동
cd /

# 직전 디렉토리(폴더)로 이동
cd - 

# 홈 경로(/home/본인계정 디렉토리) 디렉토리(폴더)로 이동
cd

# 상대경로와 절대경로
# 상대경로 : 현재 위치를 기준 ex) cd ../../../
# 절대경로 : 디렉토리의 실제 경로 내 현재 위치 상관X cd /home 


# 파일내영을 터미널창에 출력하기
cat first_file.txt

# 파일내용 편집기로 열기 : nano, vi
nano firsts_file.txt
vi first_file.txt

# 파일내용 상위 10줄 출력
head 파일명

# 파일내용 하위 10줄 출력
tail 파일명

# 파일내용 하위 n줄 출력
tail -숫자 파일명

# 파일내용 실시간 조회
tail -f 파일명

# 도스키(화살표) 위/아래 통해 이전 명령어 조회
# history를 통해 이전에 실행했던 명령어 모두 조회 가능
# clear를 통해 터미널창에 보이는 명령어 내역 모두 지우기
# Ctrl+c를 통해 입력중인 명령어 취소

# 파일 삭제 , -f 옵션을 통해 묻지않고 삭제
rm 파일명

# 디렉토리(폴더)째 삭제
rm -r 폴더명

# 터미널창에 입력한 문자열 출력
echo "hello world"

# echo를 통해 파일에 내용 입력 가능
# > : 덮어쓰기, >> 추가모드
echo "hello world" > second_file.txt

# 복사명령어(디렉토리 복사시에는 -r 옵션)
# cp 복사대상 복사될파일명
cp first_file.txt first_file_copy.txt

# 파일이동명령어
mv 이동대상파일 경로/이동될파일명
# 현재폴더에서 파일명 변경
mv second_file.txt ./third_file.txt
# 상위폴더로 파일 이동
mv third_file.txt ../
# 상위폴더로 파일명 바꾸며 이동
mv third_file.txt ../abc.txt

# grep : 파일 내에서 문자열 찾기
# r : 디렉토리내, n : 라인수 출력, i : 대소문자 구분 없이 
grep -rni "hello" .

# find : 이름으로 파일 또는 디렉토리 찾기 
find . -name "*.txt"
# 파일만 찾겠다
find . -type f

# find와 grep의 혼영
# | xargs를 통해 왼쪽실행문의 결과값을 오른쪽의 실행문의 input값으로 전달
find . -name "*.txt" | xargs grep -rni "hello"
# -exec
find . -name "*.txt" -exec grep -rni "hello" {} \;

# type file 중에 이름이 first로 시작하는 파일을 찾아
# 그파일들 안에 hello라는 키워드가 들어가 있는 문장을 찾아라.
find . -type f -name "first*" -exec grep -rni "hello" {} \;
find . -type f -name "first*" | xargs grep -rni "hello"
