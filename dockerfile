FROM selenium/standalone-chrome:120.0

USER root

# システムアップデート
RUN apt-get update \
    && apt install -y openjdk-21-jdk \
    && apt-get install -y \
    && apt install -y chromium-browser \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# コンテナ内で作業するディレクトリを指定
WORKDIR /usr/app/

# srcフォルダ全てを全部作業用ディレクトリにコピー
COPY ./src/ .