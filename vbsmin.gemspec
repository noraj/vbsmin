# frozen_string_literal: true

require_relative 'lib/vbsmin/version'

Gem::Specification.new do |s|
  s.name          = 'vbsmin'
  s.version       = Version::VERSION
  s.platform      = Gem::Platform::RUBY
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
    'yard.run'              => 'yard',
    'bug_tracker_uri'       => 'https://github.com/noraj/vbsmin/issues',
    'changelog_uri'         => 'https://github.com/noraj/vbsmin/blob/master/docs/CHANGELOG.md',
    'documentation_uri'     => 'https://noraj.github.io/vbsmin/',
    'homepage_uri'          => 'https://noraj.github.io/vbsmin/',
    'source_code_uri'       => 'https://github.com/noraj/vbsmin/',
    'funding_uri'           => 'https://github.com/sponsors/noraj',
    'rubygems_mfa_required' => 'true'
  }

  s.required_ruby_version = ['>= 2.7.0', '< 4.0']

  s.add_runtime_dependency('docopt', '~> 0.6') # for argument parsing
  s.add_runtime_dependency('paint', '~> 2.2') # for colorized output
end
