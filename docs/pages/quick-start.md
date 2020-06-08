# Quick start

## Quick install

```
$ gem install vbsmin
```

## Default usage: CLI

```
$ vbsmin samples/features.vbs
Original file size: 344 bytes
Minified file size: 244 bytes
Size saved: 100 bytes

Original file path: samples/features.vbs
Minified file path: samples/features.min.vbs
```

## Default usage: library

```ruby
require 'vbsmin'

vm = VBSMin.new
vm.minify('samples/features.vbs')
```
