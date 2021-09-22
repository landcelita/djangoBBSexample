# Python3のイメージを基にする
FROM python:3
ENV PYTHONUNBUFFERED 1

# ビルド時に/codeというディレクトリを作成する
RUN mkdir /code

# ワークディレクトリの作成
WORKDIR /code

# requirements.txtを/code/にコピーする
ADD requirements.txt /code/

# requirements.txtを基にpip installしたあと、todoprojectフォルダ作る
RUN pip install -r requirements.txt
ADD . /code/