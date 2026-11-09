#!/bin/bash
# Khởi chạy container
docker run -d --name rikkei-course-service -p 8081:80 nginxdemos/hello
# Kiểm tra trạng thái
docker ps
# Kiểm tra truy cập
curl http://localhost:8081
