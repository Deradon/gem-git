# -*- encoding : utf-8 -*-
require 'gem_git'

repo_path = ARGV.shift

if !repo_path
  puts "Error: Please provide a path to a git-repository"
  exit(1)
end

GemGit.install(repo_path)

