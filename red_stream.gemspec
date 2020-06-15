lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "red_stream/version"

Gem::Specification.new do |spec|
  spec.name          = "red_stream"
  spec.version       = RedStream::VERSION
  spec.authors       = ["Anthony Super"]
  spec.email         = ["asuper@sondermind.com"]

  spec.summary       = %q{A nicer interface for Redis Streams}
  spec.description   = <<~TEXT
    This gem provides a set of interfaces to Redis streams, ranging from extremely abstract to
    not at all abstract.
  TEXT
  spec.homepage      = "https://github.com/SonderMindOrg/red_stream"
  spec.license       = "MIT"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.github.com/SonderMindOrg/red_stream.git"
  spec.metadata["changelog_uri"] = "https://www.github.com/SonderMindOrg/red_stream/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
