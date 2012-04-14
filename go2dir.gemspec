# -*- encoding: utf-8 -*-
require File.expand_path('../lib/go2dir/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bruno Costa"]
  gem.email         = ["bruno.costa@hardquarters.com"]
  gem.date          = File.utime('VERSION')
  gem.summary       = "go2dir is a shorcut manager to speed up your command line cding"
  gem.description   = "Are you trying to become a bash ninja? Then, stop typing over 
  and over again the same paths to the same directories! go2dir lets you create shortcuts 
  for your most used paths and change lightning fast your current directory."

  gem.homepage      = "https://github.com/brunohq/go2dir"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "go2dir"
  gem.require_paths = ["lib"]
  gem.version       = Go2dir::VERSION
end
