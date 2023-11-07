# bff_api_types

`bff_api_types`のAPI型定義パッケージ

## 構成

通常、このパッケージの構成は以下のようになります。

```tree
lib/
├── routes
│   └── xxx
│       └── yyy
│           ├── zzz_request.dart: `/xxx/yyy`のリクエスト型定義
│           └── zzz_response.dart: `/xxx/yyy`のレスポンス型定義
└── bff_api_types.dart
```

## 新しいAPI型定義を追加する方法

1. `lib/routes`の下に新しいディレクトリを作成します
2. ディレクトリの下に`xxx_request.dart`と`xxx_response.dart`を作成します
3. `lib/bff_api_types.dart`に以下のコードを追加します

```dart
export 'routes/xxx/yyy/zzz_request.dart';
export 'routes/xxx/yyy/zzz_response.dart';
```
