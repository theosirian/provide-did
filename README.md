# Provide DID

Adding support for DIDs as identifiers in Provide.

To run the modified stack:

```bash
$ docker-compose up -d --build
```

## `provide-cli`

To compile and install the modified `prvd` tool, run these commands on the
`provide-cli` directory:

```bash
$ export GOPATH=$HOME/go
$ export PATH="$PATH:$GOPATH/bin"

$ make install
```

Then, to point the tool to the locally deployed stack, export the following
environment variables:

```bash
$ export NCHAIN_API_HOST=localhost:8080;
$ export NCHAIN_API_SCHEME=http;
$ export IDENT_API_HOST=localhost:8081;
$ export IDENT_API_SCHEME=http;
$ export VAULT_API_HOST=localhost:8082;
$ export VAULT_API_SCHEME=http;
```

Finally, use it as you would the default version:

```bash
$ prvd users create
$ prvd authenticate
$ ...
```
