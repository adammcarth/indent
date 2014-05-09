Gem::Specification.new do |s|
  s.name        = "indent"
  s.version     = "1.0.0"
  s.date        = "2014-05-10"
  s.platform    = Gem::Platform::RUBY
  s.description = "A small library for all things indentation."
  s.summary     = s.description
  s.homepage    = "https://github.com/adammcarthur/indent"
  s.license     = "MIT"

  s.authors     = ["Adam McArthur"]
  s.email       = ["adam@adammcarthur.net"]

  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^(spec)/})
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 1.0.0"

  s.post_install_message = "[Indent] Confucius say: <%= yield.code_indent(4) %>"
end
