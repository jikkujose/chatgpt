# frozen_string_literal: true

require_relative "lib/chatgpt/version"

Gem::Specification.new do |spec|
  spec.name = "chatgpt"
  spec.version = Chatgpt::VERSION
  spec.authors = ["Jikku Jose"]
  spec.email = ["jikkujose@gmail.com"]

  spec.summary = "ChatGPT gem"
  spec.description = "Simple gem to wrap ChatGPT API"
  spec.homepage = "https://github.com/jikkujose/chatgpt.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jikkujose/chatgpt"
  spec.metadata["changelog_uri"] = "https://github.com/jikkujose/chatgpt/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
