$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'bundler'
Bundler.setup :default, :test
require 'utilio'
require 'rspec'

RSpec.configure do |config|
  
end
