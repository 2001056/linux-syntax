# 쉘 스크립트는 반드시 .sh 확장자 
# 쉘 스크립트는 실행 할때 ./myscript.sh
# 실행을 위해서는 실행권한(x)가 필요하다
# 예시 
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh
./myscript.sh


# 실습1
# myscript2.sh 파일 생성
# 터미널 창에 sript start 출력
echo "script start"
# 홈디렉토리에서 mydir 폴덩생성
cd
mkdir mydir
# mydir로 이동해서 file1.txt, file2.txt 파일생성
cd mydir
touch file1.txt file2.txt
# file1 = hello from file1
echo "hello frme file1"
# file2 = hello from file2
echo "hello frme file1"
# 터미널 창에 sript end 출력
echo "script end"