
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "method_publisher/version"

Gem::Specification.new do |spec|
  spec.name          = "method_publisher"
  spec.version       = MethodPublisher::VERSION
  spec.authors       = ["meganemura"]
  spec.email         = ["meganemura@users.noreply.github.com"]

  spec.summary       = "Make private methods public"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/meganemura/method_publisher"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
