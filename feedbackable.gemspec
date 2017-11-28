$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "feedbackable"
  s.version     = '0.1.0'
  s.authors     = ["Max Woolf"]
  s.email       = ["max@substrakthealth.com"]
  s.homepage    = "https://substrakthealth.com"
  s.summary     = "Simple set of tools to collect feedback on web services."
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "> 5.0"
  s.add_dependency 'inline_svg'
  s.add_development_dependency "sqlite3"
end
