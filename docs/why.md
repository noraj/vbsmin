## Why?

The only open-source tool I found that was offering VBScript minifying is
[thinIt][thinIt].
thinIt is unmaintained, developed with the deprecated Python 2 and has only
a very partial support of the minification.
Also no Ruby library was available in addition of a CLI tool.
See the difference of supported features below.

Feature                             | vbsmin | [thinIt][thinIt]
------------------------------------|--------|-----------------
⬜️ Trailing whitespace              | ✅      | ✅
⬜️ Leading whitespace               | ✅      | ✅
⬜️ Blank lines                      | ✅      | ✅
⬜️ Inline extra spaces              | ✅      | ❌
💬 Single quote (start of the line) | ✅      | ✅
💬 Single quote (inline)            | ✅      | ❌
💬 REM                              | ✅      | ❌
1️⃣ Line splitting (underscore)     | ✅      | ❌
1️⃣ Colon                           | ✅      | ❌
Maintained                          | ✅      | ❌ (since 2018)
Library                             | ✅      | ❌
Dev language                        | 💎     | 🐍 (Python 2)

Legend:

- ⬜️: Remove extra whitespace
- 💬: Remove comments
- 1️⃣: One-line
- ✅: feature supported
- ❌: feature not supported
- ⭕️: feature partially support
- 💎: Ruby
- 🐍: Python

[thinIt]:https://github.com/freginold/thinIt
