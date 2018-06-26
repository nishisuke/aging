
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aging/version"

Gem::Specification.new do |spec|
  spec.name          = "aging"
  spec.version       = Aging::VERSION
  spec.authors       = ["nishisuke"]
  spec.email         = ["nishisuke13+git@gmail.com"]

  spec.summary       = %q{Counting age from date}
  spec.description   = %q{It is extension of Date Class, which calculate age}
  spec.homepage      = "https://github.com/nishisuke/aging"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
