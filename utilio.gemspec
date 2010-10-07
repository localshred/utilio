# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'utilio/version'

Gem::Specification.new do |s|
  s.name        = 'utilio'
  s.version     = Utilio::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['BJ Neilsen', 'Bart Elison']
  s.email       = ['bj.neilsen@gmail.com', 'bart.elison@gmail.com']
  s.homepage    = 'http://www.rand9.com'
  s.summary     = 'A general collection of application utilities for dealing with paths and active_record, and security'
  s.description = 'A general collection of application utilities for dealing with paths and active_record and security'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'utilio'

  s.add_development_dependency 'bundler', '>= 1.0.0.rc.5'
	s.add_development_dependency 'rspec', '>= 2.0.0.rc'

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
end
