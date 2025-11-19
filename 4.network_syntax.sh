# 프로세스 목록 조회
ps -ef
ps -ef | grep "nginx"

# 패키지 관련
# yum 레드햇계열 패키지 관리도구
# apt 데비안 계열 패키지 관리도구
# 패키지 목록 최신화
sudo apt update
# 패키지 설치 (nginx)
sudo apt install nginx
# 프로세스 실행/중지 : systemctl
sudo systemctl start nginx
sudo systemctl start nginx

# 프로세스 강제 종료
sudo kill -9 pid (프로세스 아이디-Ex.12403) 

# 특정 도메인의 ip 주소 정보 조회 : DNS서버에 문의
nslookup 도메인

# 로컬 ip 정보 조회
ifconfig


# 네트워크 연결상태 조회
# 일반적으로 핑은 보안상 막아두고 있음.
ping ip주소
ping 8.8.8.8

# 포트 : 한프로그램내에 어떤 프로그램으로 갈지 결정

# IP와 포트를 이용해, 특정 서버의 특정 프로그램의 통신상태까지 확인가능
# 일반적으로 telnet은 막혀있고, 사용하기를 권장하지 않음.
telnet IP 포트번호
nc -zv IP주소(or도메인) 포트번호

# 원격접속 : 22 port open
ssh 계정명@도메인주소(또는IP주소)
# 원격파일전송 : 22 port open
scp 전송하고자하는파일 원격지주소