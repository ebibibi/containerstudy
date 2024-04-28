# 事前にすべてのコンテナの停止、削除、イメージの削除を行う
docker stop $(docker ps -q)
docker rm $(docker ps -q -a)
docker rmi $(docker images -q)

# イメージの表示
docker images

# 'httpd'というイメージの取得
docker pull httpd

# 'httpd'というイメージの内容を確認
docker image history httpd
docker image inspect httpd

#すべてのコンテナの表示
docker ps -a

# 'httpdrun'という名前で'httpd'というイメージからコンテナを作成
# -i : インタラクティブモード
# -t : 疑似tty(仮想端末)を割り当てる
# /bin/bashを起動
docker run --name httpdrun -it httpd /bin/bash

# コンテナの実行状態を確認
docker ps -a

$dockerid = $(docker ps -a -q --filter "name=httpdrun")

# コンテナの起動
docker start $dockerid

# コンテナの実行状態を確認
docker ps -a

# コンテナにアタッチ
docker attach $dockerid

# コンテナの停止
docker stop $dockerid

# コンテナの実行状態を確認
docker ps -a

# コンテナの削除
docker rm $dockerid

# コンテナの実行状態を確認
docker ps -a

# イメージの状態を確認
docker images

# イメージの削除
docker rmi httpd

# イメージの状態を確認
docker images