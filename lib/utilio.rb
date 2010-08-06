%w(
  path
  database
).each do |file|
  require File.expand_path(File.join(File.dirname(__FILE__), 'utilio', File.basename(file, '.rb')))
end

module Utilio
end
