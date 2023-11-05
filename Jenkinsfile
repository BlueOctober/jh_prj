# 작업 디렉토리를 설정합니다.
WORKDIR /srv/workspace/app

# 프로젝트의 모든 파일을 Docker 이미지 내부로 복사합니다.
COPY . .

# 빌드된 JAR 파일을 런타임 이미지로 복사합니다.
cp -r /srv/workspace/app/* /srv/mydir