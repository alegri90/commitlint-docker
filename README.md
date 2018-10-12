# docker-commitlint
Docker image for [commitlint](http://marionebl.github.io/commitlint/) with [conventional config](https://github.com/marionebl/commitlint/tree/master/%40commitlint/config-conventional)

## Usage

```bash
echo "my commit message" | docker run --interactive commitlint
```

## Build

```bash
make build
```
