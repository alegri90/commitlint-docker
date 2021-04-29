# docker-commitlint
Docker image for [commitlint](http://marionebl.github.io/commitlint/) with [conventional config](https://github.com/marionebl/commitlint/tree/master/%40commitlint/config-conventional)

## Usage

```bash
echo "my commit message" | docker run --interactive commitlint
```

## .zshrc

```
# function: lint last commit message
git-commitlint() {
    git log --pretty=%B -1 | docker run --interactive --rm commitlint:latest
}
```

## Build

```bash
make build
```
