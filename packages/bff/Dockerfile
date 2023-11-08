# Dart公式イメージ https://hub.docker.com/_/dart
FROM dart:latest AS builder

WORKDIR /app

COPY bff/pubspec* ./
COPY github_api/pubspec* ../github_api/
COPY bff_api_types/pubspec* ../bff_api_types/

RUN dart pub get
RUN dart pub global activate dart_frog_cli

COPY bff ./
# `pubspec_overrides.yaml` で依存しているパッケージをbuilderへコピー
COPY github_api ../github_api/
COPY bff_api_types ../bff_api_types/

# dart_frog を用いて、本番用のパッケージ生成を行う
RUN dart pub global run dart_frog_cli:dart_frog build

RUN dart pub get --offline
RUN dart compile exe build/bin/server.dart -o build/bin/server

# AOTコンパイルされた実行可能バイナリを 必要最低限のイメージ`scratch` にコピー
FROM scratch
COPY --from=builder /runtime/ /
COPY --from=builder /app/build/bin/server /app/bin/

# サーバを実行する
EXPOSE 8080
CMD ["/app/bin/server"]