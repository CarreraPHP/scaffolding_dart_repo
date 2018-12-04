#Mono repo for Dart Development which include Server, AngularDart and Flutter.

#Commands to run the applications

run angular in api

```sh
webdev serve --release --output web:../api/ng web:9669
```

generate DB Schema & tables

```sh
aqueduct db generate
aqueduct db upgrade --connect postgres://dart:dart@localhost:5432/scaffolding
```