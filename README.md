YJIT を Lambda で実行するために作成した Lambda のサンプル

※ ローカルでも YJIT の有効化を確認した（ローカルで動かせる）ので、デプロイについてはこのリポジトリでは触れません。

### sam コマンドで実行する

```
sam build --use-container --cached --parallel
sam local invoke HelloWorldRT32Function
sam local invoke HelloWorldRT32YJITFunction
```

### npm がインストールされている場合

※ 実際に動かすのは sam コマンドですが、template.yaml に定義した Function を覚えるのは大変なので、npm script で短くすると便利です。

```
npm run build
npm run hw:rt32
npm run hw:rt32:yjit
```

### 性能をテストする

`functions/hello_world/app.rb`のコードは簡単なコードですので、実際に YJIT の性能をテストする際はご自身でコードを書き換えてください。
