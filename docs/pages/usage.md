# Usage

## CLI

```
$ vbsmin --help
vbsmin - VBScript minifier

Usage:
  vbsmin [options] <filepath>
  vbsmin -h | --help
  vbsmin --version

Options:
  --no-color      Disable colorized output
  --debug         Display arguments
  -h, --help      Show this screen
  --version       Show version

Examples:
  vbsmin samples/pyenv.vbs
  vbsmin --no-color samples/pyenv.vb
```

## Library

```ruby
require 'vbsmin'

vm = VBSMin.new
vm.minify('samples/features.vbs')

puts "Original file size: #{vm.input_size} bytes"
puts "Minified file size: #{vm.output_size} bytes"
puts "Size saved: #{vm.diff_size} bytes"
puts "\nOriginal file path: #{vm.original_filepath}"
puts "Minified file path: #{vm.min_filepath}"
```
