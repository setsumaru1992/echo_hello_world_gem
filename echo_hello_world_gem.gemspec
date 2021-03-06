require_relative 'lib/echo_hello_world_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "echo_hello_world_gem"
  spec.version       = EchoHelloWorldGem::VERSION
  spec.authors       = ["setsumaru1992"]
  spec.email         = ["setsumaru@muriyari.work"]

  spec.summary       = %q{hoge}
  spec.description   = %q{gehogehoge}
  spec.homepage      = "http://example.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://example.com"
  spec.metadata["changelog_uri"] = "http://example.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
