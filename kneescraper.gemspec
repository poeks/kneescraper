# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kneescraper/version'

Gem::Specification.new do |spec|
  spec.name          = "kneescraper"
  spec.version       = Kneescraper::VERSION
  spec.authors       = ["Jen Oslislo"]
  spec.email         = ["poeksweb@gmail.com"]
  spec.summary       = %q{A simple HTML scraper}
  spec.description   = %q{A simple HTML scraper that uses Faraday and Nokogiri}
  spec.homepage      = "http://github.com/poeks/kneescraper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency "nokogiri"
  spec.add_dependency "faraday"
end
