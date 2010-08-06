# %w(
#   path
#   database
#   security
# ).each do |file|
#   require File.expand_path(File.join(File.dirname(__FILE__), 'utilio', File.basename(file, '.rb')))
# end
# 
module Utilio
  autoload :Path, 'utilio/path'
  autoload :Database, 'utilio/database'
  autoload :Security, 'utilio/security'
end
