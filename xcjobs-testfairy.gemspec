# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xcjobs/testfairy/version'

Gem::Specification.new do |spec|
  spec.name          = "xcjobs-testfairy"
  spec.version       = Xcjobs::Testfairy::VERSION
  spec.authors       = ["ukitaka"]
  spec.email         = ["yuki.takahashi.1126@gmail.com"]
  spec.summary       = %q{testfairy plugin for xcjobs}
  spec.description   = %q{
  testfairy plugin for xcjobs

  xcjobs: 
    https://github.com/kishikawakatsumi/xcjobs

  }
  spec.homepage      = "https://github.com/ukitaka/xcjobs-testfairy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_runtime_dependency "xcjobs", "~> 0.1"
end
