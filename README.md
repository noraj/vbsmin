Minify:

1. Remove extra whitespace
  - [x] Trailing whitespace
  - [x] Leading whitespace
  - [x] Blank lines
  - [x] Several spaces between two keywords except in a string
2. Remove comments
  - [x] Line beginning with a single quote
  - [x] Line beginning with the Rem statement
  - [x] Inline comment with a quote
3. One-line
  - [x] Remove alone underscore and the following newline (line splitting)
  - [x] Replace newline by a colon

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

Why?

- SQLi
- file size

https://github.com/freginold/thinIt doesn't do the job
