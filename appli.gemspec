# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "appli/version"

Gem::Specification.new do |s|
  s.name        = "appli"
  s.version     = Appli::VERSION
  s.authors     = ["millefiori"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{mobile appli settings}
  s.description = %q{mobile appli settings}

  s.rubyforge_project = "appli"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
