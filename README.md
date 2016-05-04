goofimports
===========

Based on https://github.com/eugeii/goimports, this is another fork of goimports (golang.org/x/tools/cmd/goimports)
that allows to skip the walk through all directories included in `$(GOPATH)/.goignore`.

It basically makes goimports fast again.

### Install.

```sh
go get -u github.com/maraino/goofimports
```

### Generate

A script `generate.sh` is included which can generate an optimal `.goignore`
file (all directories that do not contain `.go` files in their subdirectories).
To use it to generate your `.goignore` file:

```sh
sh "$GOPATH/src/github.com/maraino/goofimports/generate.sh" | tee "$GOPATH/.goignore"
```
