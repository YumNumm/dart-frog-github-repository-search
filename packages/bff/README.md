# bff

Github Repository Search Application の BFF パッケージ

## 構成

```tree
.
├── Dockerfile
├── README.md
├── build: 本番ビルドの出力ディレクトリ (gitignore)
├── pubspec.yaml
├── pubspec_overrides.yaml: pubspec.yaml のオーバーライド (melos bootstrap を実行すると自動生成されます)
├── routes
│   └── sample
│      ├── _middleware.dart: `/sample` & `/sample/*` のミドルウェア
│      └── index.dart: `/sample` のルートハンドラ
├── src
└── test
    └── routes
       └── sample: `/sample` のテスト
```

## 開発

### 環境構築

この BFF を実行するには、Dart または Docker のいずれかを使用できます。
Hot Reloadを利用したい方は `Dockerfile.dev` を使用してください。

- [dart_frog] をインストールする
  - [Quick Start] を参照してください

### 開発サーバー

```bash
dart_frog dev
```

### 新しい API エンドポイントを追加する方法

1. `routes` ディレクトリの下に新しいディレクトリを作成する
   `dart_frog new route path/to/route` コマンドを使用して、新しいルート `path/to/route` を作成できます
1. これで、ルートハンドラを編集できます
    ルートハンドラ: `routes/path/to/route/index.dart`
1. ミドルウェアを使用する場合は、ミドルウェアファイルを作成/編集できます
    ミドルウェア: `/path/to/route`, `/path/to/route/*` のための `routes/path/to/route/_middleware.dart`
1. ルートが正しく動作することを確認するために、新しいテストファイルを作成します
    テスト: `test/routes/path/to/route/index_test.dart`

[dart_frog]: https://dartfrog.vgv.dev/
[Quick Start]: https://dartfrog.vgv.dev/docs/overview#quick-start-
