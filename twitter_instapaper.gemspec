# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "twitter_instapaper/version"

Gem::Specification.new do |s|
  s.name        = "twitter_instapaper"
  s.version     = TwitterInstapaper::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brad Bollenbach"]
  s.email       = ["bradb@30sleeps.com"]
  s.homepage    = "https://github.com/bradb/twitter_instapaper"
  s.summary     = %q{Extract links from favourited tweets and send them to Instapaper}
  s.add_dependency("twitter", ">= 1.1.2")
  s.add_dependency("httparty", ">= 0.7.3")
  s.post_install_message = <<SETUP
********************************************************************************

  To install twitter_instapaper, please see docs at:
  https://github.com/bradb/twitter_instapaper

********************************************************************************
SETUP

  s.rubyforge_project = "twitter_instapaper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
