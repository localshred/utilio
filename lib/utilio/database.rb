require 'utilio/path'

module Utilio
  class Database
    class << self
      
      DEFAULT_OPTS = {
        environment: nil,
        file: 'config/database.yml'
      }
    
      # Load the configuration file from your application root
      def config options={}
        options = DEFAULT_OPTS.merge(options)
        config = Path.yaml_file(options[:file])
        unless options[:environment].nil? || options[:environment].empty?
          config[options[:environment]]
        else
          config
        end
      end
    
    end
  end
end
