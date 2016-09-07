# -*- encoding: utf-8 -*-

VERSION = "0.0.1"

Gem::Specification.new do |spec|
  spec.name          = "motion-android-volley"
  spec.version       = VERSION
  spec.authors       = ["Alejandro Hoyos"]
  spec.email         = ["alejandro@dezarrolla.com"]
  spec.description   = "[POC] Small wrapper around Volley lib for android"
  spec.summary       = "[POC] Small wrapper around Volley lib for android"
  spec.homepage      = ""
  spec.license       = ""

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
