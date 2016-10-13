# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jeet/version'

Gem::Specification.new do |spec|
  spec.name          = 'jeet'
  spec.version       = Jeet::VERSION
  spec.authors       = ['Cory Simmons', 'Jonah Ruiz']
  spec.email         = ['csimmonswork@gmail.com', 'jonah@pixelhipsters.com']
  spec.summary       = 'A grid system for humans.'
  spec.description   = 'The most advanced and intuitive Sass grid system on the planet.'
  spec.homepage      = 'http://jeet.gs'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'sass', '>= 3.2'

  spec.add_development_dependency 'bundler', '>= 1.6'
  spec.add_development_dependency 'rake', '>= 10.0'
end
