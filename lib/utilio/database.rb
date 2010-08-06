require 'utilio/path'

module Utilio
  class Database
    class << self
    
      # Load the configuration file from your application root
      def config options={environment: nil, file: 'config/database.yml'}
        config = Path.yaml_file(options[:file])
        options[:environment].nil? ? config : config[options[:environment]]
      end
    
    end
  end
end
