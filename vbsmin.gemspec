# frozen_string_literal: true

require_relative 'lib/vbsmin/version'

Gem::Specification.new do |s|
  s.name          = 'vbsmin'
  s.version       = Version::VERSION
  s.platform      = Gem::Platform::RUBY
  s.date          = '2020-06-08'
  s.summary       = 'VBScript minifier'
  s.description   = 'VBScript minifier CLI tool and library'
  s.authors       = ['Alexandre ZANNI']
  s.email         = 'alexandre.zanni@engineer.com'
  s.homepage      = 'https://noraj.github.io/vbsmin/'
  s.license       = 'MIT'

  s.files         = Dir['bin/*'] + Dir['lib/**/*.rb'] + ['LICENSE']
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.metadata = {
    'yard.run'          => 'yard',
    'bug_tracker_uri'   => 'https://github.com/noraj/vbsmin/issues',
    'changelog_uri'     => 'https://github.com/noraj/vbsmin/blob/master/docs/CHANGELOG.md',
    'documentation_uri' => 'https://noraj.github.io/vbsmin/',
    'homepage_uri'      => 'https://noraj.github.io/vbsmin/',
    'source_code_uri'   => 'https://github.com/noraj/vbsmin/'
  }

  s.required_ruby_version = '~> 2.7'

  s.add_runtime_dependency('docopt', '~> 0.6') # for argument parsing
  s.add_runtime_dependency('paint', '~> 2.2') # for colorized ouput

  s.add_development_dependency('bundler', '~> 2.1')
  s.add_development_dependency('commonmarker', '~> 0.21') # for GMF support in YARD
  s.add_development_dependency('github-markup', '~> 3.0') # for GMF support in YARD
  s.add_development_dependency('minitest', '~> 5.12')
  s.add_development_dependency('rake', '~> 13.0')
  s.add_development_dependency('redcarpet', '~> 3.5') # for GMF support in YARD
  s.add_development_dependency('rubocop', '~> 0.80')
  s.add_development_dependency('yard', '~> 0.9')
end
