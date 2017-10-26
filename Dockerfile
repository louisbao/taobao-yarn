FROM node:6.11.5

MAINTAINER Louis Bao <louis.bao@icloud.com>

# Explanation line by line
# 1. Set npm registry to Taobao
# 2. Install yarn
# 3. Set yarn registry to Taobao
RUN npm config set registry=https://registry.npm.taobao.org && \
    npm install --global yarn && \
    yarn config set registry https://registry.npm.taobao.org

WORKDIR /workspace
