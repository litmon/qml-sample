# ruby-qmlでGUIアプリケーション
ruby-qmlを使用してQML+QTのアプリケーション開発サンプル

## INSTALL

ruby-qmlのインストール(これがめんどくさい)

### Xcodeのインストール

CommandLineToolsだけじゃなくXcode自体のインストールが必要。
というか、Xcodeの証明を通る必要あり。

### qt5, libffiのインストール

```
$ brew install qt5
$ brew install libffi
```

### ruby-qmlのインストール

```
$ gem install qml -- --with-qmake=$(brew --prefix qt5)/bin/qmake
```

## APPLICATION

とにもかくにもHello, world!アプリ作成。

起動は以下コマンド

```
$ ruby hello.rb
```

## PACKAGING

jRuby + rawrを使って.exe|.appファイルを生成する。

### jRubyの環境構築

```
$ brew install jruby
```

### rawrのインストール

```
$ gem install rawr --source http://gems.neurogami.com
$ rbenv rehash
$ rawr install
```

### lib/rubyに必要なgemをインストール

```
$ bundle config build.qml --with-qmake=$(brew --prefix qt5)/bin/qmake
$ bundle install --path lib/ruby
```

### 実行ファイルの設定

build_configuration.rbに以下の設定を記述(コメントアウト解除)

```
configuration do |c|
	c.executable_type = "gui"

  # 実行ファイルのファイル名を記述
	c.main_ruby_file = "hello"
end
```

## REFERENCES

ruby-qmlの製作者さん？のQiita記事

[RubyとQML/Qt Quickでデスクトップ用GUIアプリを書けるgem「ruby-qml」を作った](http://qiita.com/seanchas_t/items/ec8b5376b80eee22ea15)


