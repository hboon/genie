# -*- encoding: utf-8 -*-
require File.expand_path('../lib/genie/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'command-genie'
  gem.authors  = ['Hwee-Boon Yar']
  gem.email = 'hboon@motionobj.com'
  gem.version       = CommandGenie::VERSION

  gem.licenses      = ['BSD']
  gem.summary = 'genie — Run commands that are bound to directories.'
  gem.description = gem.summary
  gem.homepage = 'http://hboon.com/genie/'

	gem.add_dependency 'commander', '~> 4.3'
  gem.files       = `git ls-files`.split($\)
  gem.executables   = ['genie']
  gem.require_paths = ['lib']
  #gem.test_files  = gem.files.grep(%r{^spec/})
end
