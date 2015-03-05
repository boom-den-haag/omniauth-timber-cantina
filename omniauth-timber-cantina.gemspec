# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/timber/cantina/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-timber-cantina"
  spec.version       = Omniauth::Timber::Cantina::VERSION
  spec.authors       = ["Johan Kok"]
  spec.email         = ["info@johankok.nl"]
  spec.summary       = %q{OmniAuth strategy for Timber Cantina SSO application.}
  spec.description   = %q{OmniAuth strategy for Timber Cantina SSO application.}
  spec.homepage      = "https://github.com/johankok/omniauth-timber-cantina"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.2.2'
  spec.add_dependency 'omniauth-oauth2', '~> 1.2.0'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.2.0'
end
