## 前提ソフトウェア

* make
* docker
* docker-compose
* (git)

## 始め方

```
make init
```

このコマンドにより以下が実行されます

* `workspace/data`以下にスコアデータを作成します。
* Dockerコンテナを起動します。

スコアデータは[MasaoBlue氏のリポジトリ](https://github.com/MasaoBlue/MasaoBlue.github.io)から取得しています。

## 環境情報

* JupyterLab: http://localhost:8888

## 分析ノートブック

* data_preparation/join.ipynb
  * 元データを分析しやすい形に変換し`data/data_preparation/concat.csv`に出力します
* analysis/evt.ipynb
  * 極値分布により推定した結果を`data/analysis`以下に出力します
    * `img/*.png`: 各譜面で推定されたパラメータからプロットしたグラフ
    * `ult.csv`: 各譜面の99%分位点のスコアをまとめたファイル