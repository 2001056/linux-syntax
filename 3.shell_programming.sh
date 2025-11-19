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

# 실습 2
# myscript3.sh 생성
nano myscript3.sh
# script3 start 출력
echo "script3 start"
# 홈디렉토리의 mydir로 이동(절대경로로 이동)
cd /home/byeongchan/mydir
# file1.txt파일의 백업본 생성. 이름은 file1_backup.txt
cp file1.txt file1_backup.txt
# file2.txt파일의 이름을 file2_rename.txt로 변경
mv file2.txt file2_rename.txt
# script3 end 출력
echo "script3 end"

# if 문
if [ 1 -gt 2  ]; then 
 echo "hello world1"
else
 echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt
if [ -f "$file_name" ]; then
 echo "$file_name file exists"
else
 echo "$file_name file does not exists"
fi

# for 문
for a in {1..100}
do 
 echo "hello world $a"
done

# for문과 파일/디렉토리 목록조회
for a in *
do 
 echo "$a"
done

# for문을 통해 변수값을 증가
count=100;
for a in {1..100}
do
 let count=count+1
done
echo "count value is $count"