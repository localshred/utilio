%w(
  path_utils
  database_utils
).each do |file|
  require File.expand_path(File.join(File.dirname(__FILE__), 'utilio', File.basename(file, '.rb')))
end

module Utilio
end
