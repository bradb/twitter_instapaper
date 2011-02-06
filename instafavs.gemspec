# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "instafavs/version"

Gem::Specification.new do |s|
  s.name        = "instafavs"
  s.version     = Instafavs::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brad Bollenbach"]
  s.email       = ["bradb@30sleeps.com"]
  s.homepage    = "https://github.com/bradb/instafavs"
  s.summary     = %q{Extract links from favourited tweets and send them to Instapaper}
  s.add_dependency("twitter", ">= 1.1.2")
  s.add_dependency("httparty", ">= 0.7.3")
  s.post_install_message = <<SETUP
********************************************************************************

  To install instafavs, please see docs at: https://github.com/bradb/instafavs

********************************************************************************
SETUP

  s.rubyforge_project = "instafavs"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
