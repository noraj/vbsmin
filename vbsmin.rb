#!/usr/bin/env ruby

require 'fileutils'

# Handle filepath and check extension
filepath = 'wmiget.vbs'
extension = File.extname(filepath).downcase
abort 'Not a .vbs file' unless extension == '.vbs'
min_filepath = filepath.chomp(extension) + '.min.vbs'

def internal_space_old(line)
  arr = []
  single_quote = line.count('"')
  # This method won't work when there is two consecutive double quote
  # so we must replace them else they will get removed.
  line.gsub!('""', '☠')
  line.split('"').each_with_index do |item, i|
    # if odd number of double quote we are in a string else we are out
    # process only if out of a string
    item.gsub!(/ +/, ' ') if i % 2 == 0
    arr.push(item)
  end
  output = arr.join('"')
  output.gsub!('☠', '""')
  output += '"' unless single_quote == output.count('"')
  return output
end

# More reliable than internal_space_old which use string replacement and string
# split
def internal_space(line)
  # For each single quote, if there is an odd number of double quote before
  # we are in a string, but if there is an even number of double quote before
  # we are out of a string.
  double_quote = 0
  previous_char = nil
  output = ''
  i = 0
  line.each_char do |c|
    double_quote += 1 if c == '"'
    output += c unless previous_char == ' ' && c == ' ' && double_quote % 2 == 0
    i += 1
    previous_char = c
  end
  return output
end

# In VBS there is no single quote strings so it's safe to remove until the end
# of string when ecountering a single quote.
# The only case to handle if is a single quote appears in a double quote string.
def inline_comment(line)
  # For each single quote, if there is an odd number of double quote before
  # we are in a string, but if there is an even number of double quote before
  # we are out of a string so this is an inline comment and we can remove all
  # that comes after.
  double_quote = 0
  i = 0
  line.each_char do |c|
    double_quote += 1 if c == '"'
    if c == "'" && double_quote % 2 == 0
      line = line[...i]
      break
    end
    i += 1
  end
  return line
end

# File streaming
File.open(min_filepath, 'w') do |output|
  File.foreach(filepath) do |line|
    eol = ":" # End of file char
    # Remove inline comment (must be before whitespace striping)
    line = inline_comment(line)
    # Remove leading and trailing whitespaces: null, horizontal tab, line feed, vertical tab, form feed, carriage return, space
    line.strip!
    # Remove comments except inline ones (must be after whitespace striping)
    line = '' if line[0] == "'" || line[0..2].upcase == "REM"
    # Remove space when several spaces between two keywords
    line = internal_space(line)
    # Remove line splitting
    line[-1] = '' && eol = '' if line[-2..-1] == ' _'
    # Write processed line unless it is a blank line
    output.write(line + eol) unless line.empty?
  end
end
