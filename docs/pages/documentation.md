# Documentation 

## CLI doc

See [Usage](pages/usage.md?id=cli).

## Server locally

```
$ npm i docsify-cli -g
$ docsify serve docs
```

## Library doc

The output directory of the library documentation will be `docs/yard`.

You can consult it online [here](https://noraj/vbsmin/yard/).

### Building locally: for library users

For developers who only want to use the VBSmin library.

```
$ bundle exec yard doc
```

### Building locally: for VBSmin developer

For developers who want to participate to VBSmin development.

```
$ bundle exec yard doc --yardopts .yardopts-dev
```
