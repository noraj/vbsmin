## [1.2.0]

- Chore:
  - Add support for Ruby 3.2, 3.3, 3.4, 4.0
  - **Breaking change**: drop ruby 2.7, 3.0, 3.1 support (EOL versions)
  - Change the way version is included. Instead of including a module `Version`, directly add the `VERSION` constant in the `VBSMin` class. It could avoid namespace collision with that kind of generic name.

## [1.1.0]

- Dependencies:
  - Update to yard [v0.9.27](https://github.com/lsegal/yard/releases/tag/v0.9.27)
    - Move from Redcarpet to CommonMarker markdown provider
- Chore:
  - Add support for Ruby 3.1

## [1.0.1]

- fix: fix [#50][#50]: too agressive comment stripping was removing non-comment statements
- rubocop: new rules for new cops
- dependencies: move dev dependencies from gemspec to gemfile

[#50]:https://github.com/noraj/vbsmin/issues/50

## [1.0.0]

- Initial version
