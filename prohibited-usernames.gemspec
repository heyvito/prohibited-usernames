require_relative 'lib/prohibited/version'

Gem::Specification.new do |spec|
  spec.name          = "prohibited-usernames"
  spec.version       = ProhibitedUsernames::VERSION
  spec.authors       = ["Vito Sartori"]
  spec.email         = ["hey@vito.io"]
  spec.licenses      = ['MIT']

  spec.summary       = %q{ProhibitedUsernames provides an extensive list of usernames not supposed to be available for users to use}
  spec.description   = %q{ProhibitedUsernames provides an extensive list of usernames not supposed to be available for users to use}
  spec.homepage      = "https://github.com/heyvito/prohibited-usernames"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/heyvito/prohibited-usernames"
  spec.metadata["changelog_uri"] = "https://github.com/heyvito/prohibited-usernames"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
