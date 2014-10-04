# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lowdown/version'

Gem::Specification.new do |spec|
  spec.name     = 'lowdown'
  spec.version  = Lowdown::Version::STRING
  spec.authors  = ['Trevor Parker']
  spec.email    = ['trevor@trevorparker.com']
  spec.summary  = 'A system intelligence library with graceful degradation.'
  spec.homepage = 'https://github.com/trevorparker/lowdown'
  spec.license  = 'Modified BSD'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'rubocop', '~> 0.26.1'
end
