$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "audit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "audit"
  s.version     = Audit::VERSION
  s.authors     = ["divyajayan"]
  s.email       = ["divya.jayan@quantiguous.com"]
  s.homepage    = "https://github.com/quantiguous/audit"
  s.summary     = "Summary of Audit."
  s.description = "Description of Audit."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "audited"

  s.add_development_dependency "sqlite3"
end
