require_relative "lib/http_accept_language/version"

Gem::Specification.new do |spec|
  spec.authors = ["iain"]
  spec.email = ["iain@iain.nl"]
  spec.homepage = "https://github.com/iain/http_accept_language"
  spec.license = "MIT"
  spec.name = "http_accept_language"
  spec.required_ruby_version = ">= 2.7.0"
  spec.summary = "Find out which locale the user prefers by reading the languages they specified in their browser."
  spec.version = HttpAcceptLanguage::VERSION

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
