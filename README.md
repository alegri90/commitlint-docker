# docker-commitlint
Docker image for [commitlint](http://marionebl.github.io/commitlint/) with [conventional config](https://github.com/marionebl/commitlint/tree/master/%40commitlint/config-conventional)

## Usage

```bash
echo "my commit message" | docker run --interactive commitlint

# function: lint last commit message
git-commitlint() {
    git log --pretty=%B -1 | docker run --interactive --rm commitlint:latest --color=true --verbose
}

# alias which peforms commitlint on the input string
# usage: clint <your intended commit message>
alias clint='(){ printf "$@" | (docker run --interactive --rm commitlint:latest --color=true --verbose) ;}'
# If the lint is valid, you can execute your next commit command with !* to fetch all previous input arguments
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
