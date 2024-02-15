#!/bin/bash

# ユーザーに確認を求める
read -p "nw.conf.jsonファイルを設定しましたか (y/n) " yn_check

# 条件分岐
if [ "$yn_check" = "y" ]; then
    # Dockerコマンドを実行
    docker run --mount type=bind,src="$(pwd)"/src/out,dst=/usr/app/out --rm selenium java -jar siken-selenium-0.0.1-SNAPSHOT.jar 8
else
    # キャンセルメッセージを表示
    echo "キャンセルしました"
fi

# ユーザーに何かキーを押すように促してスクリプトの実行を一時停止
read -p "Press [Enter] key to continue..."

