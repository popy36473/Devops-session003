#!/bin/bash

# Tạo người dùng
useradd -m rikkeilms

# Tạo thư mục
mkdir -p /opt/rikkei/course-service

# Chuyển quyền sở hữu
chown -R rikkeilms:rikkeilms /opt/rikkei/course-service

# Đặt quyền: chỉ chủ có ghi và thực thi
chmod -R u+wx,g-rwx,o-rwx /opt/rikkei/course-service

# Kiểm tra
ls -ld /opt/rikkei/course-service
