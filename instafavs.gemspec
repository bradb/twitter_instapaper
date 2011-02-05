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
  s.summary     = %q{Extract links from favorited tweets and send them to Instapaper}
  s.add_dependency("twitter", ">= 1.1.2")
  s.add_dependency("httparty", ">= 0.7.3")
  s.post_install_message = <<SETUP
********************************************************************************

  To setup instafavs, follow these steps:

  1. Run instafavs --configure. Fill in the info required.

  2. Install instafavs into your crontab, e.g.

    $ crontab -e

  to check your Twitter feed every 5 minutes for new favorites, add this line:
  
  */5 * * * * /path/to/instafavs
  
  Please email any feedback or bug reports to bradb@30sleeps.com.

********************************************************************************
SETUP

  s.rubyforge_project = "instafavs"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
