# Mono repo for Dart Development which include Server, AngularDart and Flutter.

## Commands to run the applications

### run angular in api

```sh
webdev serve --release --output web:../api/ng web:9669
```

### generate DB Schema & tables

```sh
aqueduct db generate
aqueduct db upgrade --connect postgres://dart:dart@localhost:5432/scaffolding
```

### steps to ignore changes to config files, where content will vary from dev machine to machine

```shell
git update-index --assume-unchanged api/config.yaml
git update-index --assume-unchanged api/config.src.yaml
```

The above command always considers that these yaml files are never getting updated. This is similar to `ignore-on-commit` feature of SVN.

To revert back to tracking the files uses the below commands.

```shell
git update-index --no-assume-unchanged api/config.yaml
git update-index --no-assume-unchanged api/config.src.yaml
```
