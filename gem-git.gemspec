$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gem-git/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gem-git"
  s.version     = GemGit::VERSION
  s.authors     = ["Patrick Helm"]
  s.email       = ["deradon87@gmail.com"]
  s.homepage    = "http://www.deckel-gesucht.de"
  s.summary     = "Install rubygems from git repository"
  s.description = "Simple ruby script to install a gem located in a git repository."

  s.executables = ["gem-git"]
  s.files = Dir["{app,bin,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rake"
  s.add_dependency "bundler"
end

