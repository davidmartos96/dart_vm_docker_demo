FROM dart:3.1.1

WORKDIR /app
COPY pubspec.yaml .
RUN dart pub get

COPY . .
RUN dart pub get --offline
RUN dart compile kernel -o bin/main.dill bin/main.dart

ENTRYPOINT ["dart", "run", "--enable-vm-service", "/app/bin/main.dill"]