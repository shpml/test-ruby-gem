# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative "lib/test_ruby_gem/version"

Gem::Specification.new do |spec|
  spec.name = "test_ruby_gem"
  spec.version = TestRubyGem::VERSION
  spec.authors = ["Mark Lynch"]
  spec.email = ["markl@sherpa.net.au"]

  spec.summary = "Test ruby gem"
  spec.description = "est ruby gem."
  spec.homepage = "https://github.com/shpml/test-ruby-gem"
  spec.required_ruby_version = ">= 2.6.0"

#   spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shpml/test-ruby-gem"
#   spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency 'concurrent-ruby'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
