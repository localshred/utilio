require 'utilio/path'

module Utilio
  class Database
    class << self
    
      def config db_file='database.yml', environment=nil
        @config ||= Path.yaml_file(Path.root('config', db_file))
        @config[environment] unless environment.nil?
      end
    
    end
  end
end
