# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "elrte/version"

Gem::Specification.new do |s|
  s.name        = %q{elrte}
  s.version     = Elrte::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Anton Zaytsev"]
  s.email       = ["info@antonzaytsev.com"]
  s.homepage    = ""
  s.summary     = %q{Provides WYSIWYG editor Elrte for Rails}
  s.description = %q{Provides WYSIWYG editor Elrte for Rails}

  s.rubyforge_project = "elrte"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("rails", ">= 3.1.0")
  s.add_dependency("jquery-rails", ">= 1.0.0")
  s.add_dependency("sass", ">= 3.1.0")
  s.add_dependency("el_finder", "> 0")

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
