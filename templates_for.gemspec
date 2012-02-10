# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "templates_for/version"

Gem::Specification.new do |s|
  s.name        = "templates_for"
  s.version     = TemplatesFor::VERSION
  s.authors     = ["Rufus Post"]
  s.email       = ["rufus@reinteractive.net"]
  s.homepage    = ""
  s.summary     = %q{Render js templates in a view}
  s.description = %q{Generate js templates}

  s.rubyforge_project = "templates_for"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'railties', '>= 3.0.0'
  s.add_dependency 'actionpack', '>= 3.0.0'
  s.add_dependency 'tzinfo', '>= 0.3.31'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
end
