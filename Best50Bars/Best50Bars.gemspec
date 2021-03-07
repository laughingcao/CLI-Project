# frozen_string_literal: true

require_relative "lib/Best50Bars/version"

Gem::Specification.new do |spec|
  spec.name          = "Best50Bars"
  spec.version       = Best50Bars::VERSION
  spec.authors       = ["William Cao"]
  spec.email         = ["williamacao@gmail.com"]

  spec.summary       = "List the top 50 best bars of 2020 and gives user ability to learn more about each bar."
  spec.description   = "Will use Nokogiri to scrape the data needed from the website"
  spec.homepage      = "http://github.com/laughingcao"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://github.com/laughingcao"
  spec.metadata["changelog_uri"] = " http://github.com/laughingcao"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
