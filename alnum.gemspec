require_relative 'lib/alnum/version'

Gem::Specification.new do |s|
  s.name        = 'alnum'
  s.version     = Alnum::VERSION
  s.date        = '2015-05-26'
  s.summary     = "Alphanumeric code generator."
  s.description = "Alnum is a generator of alphanumeric code from integers and vice-versa. Can be useful shortening ID numbers in order to create tiny or short URLs."
  s.authors     = ["Hanes Barbosa"]
  s.email       = 'hanes.barbosa@gmail.com'
  s.homepage    = 'http://github.com/hanesbarbosa/alnum'
  s.license     = 'MIT'
  s.post_install_message = "Let's cypher some code!"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 1.9.3'
end