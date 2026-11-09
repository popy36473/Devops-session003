#!/bin/bash

# Xóa container cũ nếu có
docker rm -f rikkei-frontend-qa >/dev/null 2>&1

# Khởi chạy container với biến môi trường
docker run -d --name rikkei-frontend-qa \
  -e API_ENDPOINT=https://api.rikkei.edu.vn \
  nginx

# Kiểm tra giá trị biến — dùng sh -c để giải biến đúng
docker exec rikkei-frontend-qa sh -c 'echo $API_ENDPOINT'
