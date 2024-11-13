# 베이스 이미지로 python:3.8-slim-buster 사용
FROM python:3.8-slim-buster

# Docker 이미지를 유지 관리하는 사람을 명시
LABEL Maintainer="pcy7805@gmail.com"

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 파일들을 컨테이너 내부로 복사
COPY app.py ./
COPY requirements.txt ./

# 의존성 설치
RUN pip3 install -r requirements.txt

# Flask 앱이 사용할 포트
EXPOSE 4000

# Flask 애플리케이션 실행 명령어
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]
