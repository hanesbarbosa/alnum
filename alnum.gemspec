Gem::Specification.new do |s|
  s.name        = 'alnum'
  s.version     = '1.0.0'
  s.date        = '2015-05-26'
  s.summary     = "Alphanumeric code generator."
  s.description = "Alnum is a generator of alphanumeric code from integers and vice-versa. Can be useful shortening ID numbers in order to create tiny or short URLs."
  s.authors     = ["Hanes Barbosa"]
  s.email       = 'hanes.barbosa@gmail.com'
  s.files       = ["lib/alnum.rb", "lib/alnum/cypher.rb", "lib/alnum/decipher.rb"]
  s.homepage    = 'http://github.com/hanesbarbosa/alnum'
  s.license     = 'MIT'
  s.post_install_message = "Let's cypher some code!"
end