#!/bin/bash

# VLESS 自动安装脚本
# 用于安装和配置 x-ui 面板

set -e  # 遇到错误时退出

echo "开始安装 VLESS..."

# 更新系统包
echo "更新系统包..."
apt update -y

# 安装必要的工具
echo "安装必要的工具..."
apt install -y curl
apt install -y wget  
apt install -y vim

# 安装 x-ui 面板
echo "安装 x-ui 面板..."
bash <(curl -Ls https://raw.githubusercontent.com/plus1998/my-vless/main/install.sh)

# 运行配置脚本
echo "运行配置脚本..."
bash <(curl -Ls https://raw.githubusercontent.com/plus1998/my-vless/main/d11.sh)

# 配置数据库
echo "配置数据库..."
cd /etc/x-ui/
rm -rf x-ui.db
wget https://raw.githubusercontent.com/plus1998/my-vless/main/x-ui.db

# 重启 x-ui 服务
echo "重启 x-ui 服务..."
x-ui restart

echo "VLESS 安装完成！"