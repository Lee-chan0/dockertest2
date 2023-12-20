#!/bin/bash

# 빌드된 Docker 이미지 생성
docker build -t apptest5-docker5 .

# 기존 컨테이너 중지 및 삭제
docker stop my-firstcontainer || true && docker rm my-firstcontainer || true

# Blue/Green 전략을 사용하여 새 컨테이너 실행
docker run -d --name my-firstcontainer-new -p 3001:3000 apptest5-docker5

# Nginx 설정 업데이트 (proxy_pass 부분 수정)
sudo cp nginx.conf /etc/nginx/sites-available/default
sudo systemctl restart nginx