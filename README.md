# VBSmin

[![Gem Version](https://badge.fury.io/rb/vbsmin.svg)](https://badge.fury.io/rb/vbsmin)
![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/noraj/vbsmin)
[![GitHub forks](https://img.shields.io/github/forks/noraj/vbsmin)](https://github.com/noraj/vbsmin/network)
[![GitHub stars](https://img.shields.io/github/stars/noraj/vbsmin)](https://github.com/noraj/vbsmin/stargazers)
[![GitHub license](https://img.shields.io/github/license/noraj/vbsmin)](https://github.com/noraj/vbsmin/blob/master/LICENSE)
[![Rawsec's CyberSecurity Inventory](https://inventory.raw.pm/img/badges/Rawsec-inventoried-FF5050_flat.svg)](https://inventory.raw.pm/tools.html#VBSmin)

[![Packaging status](https://repology.org/badge/vertical-allrepos/vbsmin.svg)](https://repology.org/project/vbsmin/versions)

![](docs/_media/vbsmin_300x300.png)

> VBScript minifier

## Features

- ⬜️ Remove extra whitespace
  - Trailing whitespace
  - Leading whitespace
  - Blank lines
  - Inline extra spaces
- 💬 Remove comments
  - Single quote (start of the line)
  - Single quote (inline)
  - REM
- 1️⃣ One-line
  - Line splitting (underscore)
  - Colon

## Quick start

**Quick install**

```
$ gem install vbsmin
```

See more [install](https://noraj.github.io/vbsmin/#/pages/install) options.

**Default usage: CLI**

```
$ vbsmin samples/features.vbs
Original file size: 344 bytes
Minified file size: 244 bytes
Size saved: 100 bytes

Original file path: samples/features.vbs
Minified file path: samples/features.min.vbs
```

**Default usage: library**

```ruby
require 'vbsmin'

vm = VBSMin.new
vm.minify('samples/features.vbs')
```

## Example of output

So this chunk of script...

```vb
' Get WMI Object.
On Error Resume Next
Set objWbemLocator = CreateObject _
  ("WbemScripting.SWbemLocator")

if Err.Number Then
  REM Display error
  WScript.Echo vbCrLf & "Error # " & _
               " " & Err.Description
End If
On Error GoTo 0	
```

... should be minified to:

```vb
On Error Resume Next:Set objWbemLocator = CreateObject ("WbemScripting.SWbemLocator"):if Err.Number Then:WScript.Echo vbCrLf & "Error # " & " " & Err.Description:End If:On Error GoTo 0
```

## References

Homepage / Documentation: https://noraj.github.io/vbsmin/

See [why](https://noraj.github.io/vbsmin/#/why) this CLI / tool was required.

## Use cases

- SQLi: when having a SQLi with write permission, you can write some files on
  the system, but some DBMS like PostgreSQL doesn't support newlines in an
  insert statement so you have to be able to write a one-line payload 
- File size:
  - in XSS or Word macro to get the more short and stealthy payload or even
    to bypass security mechanism based on length or size.
  - for performance or file upload limit

## Author

Made by Alexandre ZANNI ([@noraj](https://pwn.by/noraj/))
