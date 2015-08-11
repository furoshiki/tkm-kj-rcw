# 実行方法

Rubyをインストールしている環境下にて、以下のコマンドを実行。

```
ruby recipe.rb
```

# データの追加方法

データが定義されているファイル「recipe_data.rb」内にて、配列に以下のフォーマットにしたがって追記。

```
DATA = [
  {
    id:   1,
    name: 'オムライス',
    discription: '卵を焼いてごはんにのせる'
  },
  {
    id:   2,
    name: '親子丼',
    discription: '鶏肉を焼いて卵でとじてごはんにのせる'
  },
  {
    id:   3,
    name: '杏仁豆腐',
    discription: '牛乳と砂糖をまぜてゼラチンで固める'
  }
].freeze
```
