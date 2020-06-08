# Installation

## Production

### Install from rubygems.org

```
$ gem install vbsmin
```

Gem: [vbsmin](https://rubygems.org/gems/vbsmin)

### Install from BlackArch

From the repository:

```
# pacman -S vbsmin
```

From git:

```
# blackman -i vbsmin
```

PKGBUILD: [vbsmin](https://github.com/BlackArch/blackarch/blob/master/packages/vbsmin/PKGBUILD)

## Development

It's better to use [rbenv](https://github.com/rbenv/rbenv) or [ASDF](https://asdf-vm.com/) to have latests version of ruby and to avoid trashing your system ruby.

### Install from rubygems.org

```
$ gem install --development vbsmin
```

### Build from git

Just replace `x.x.x` with the gem version you see after `gem build`.

```
$ git clone https://github.com/noraj/vbsmin.git
$ cd vbsmin
$ gem install bundler
$ bundler install
$ gem build vbsmin.gemspec
$ gem install vbsmin-x.x.x.gem
```

Note: if an automatic install is needed you can get the version with `$ gem build vbsmin.gemspec | grep Version | cut -d' ' -f4`.

### Run the library in irb without installing the gem

From local file:

```
$ irb -Ilib -rvbsmin
```

Same for the CLI tool:

```
$ ruby -Ilib -rvbsmin bin/vbsmin
```
