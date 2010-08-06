require 'yaml'

module Utilio
  class Path
    APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
  
    class << self
      
      def root= new_root
        @app_root = new_root
      end
    
      # Get the root path of the application, optionally passing in additional folders to be joined and expanded
      # e.g. PathUtils.root 'db', 'migrate' # => /path/to/loudmouth/db/migrate
      def root *folders
        File.expand_path(File.join(*([app_root, folders].flatten)))
      end
    
      def app *folders
        root(*['app', folders].flatten)
      end
    
      def yaml_file file
        YAML.load_file(file)
      end
      
      private
      
      def app_root
        @app_root || File.expand_path(File.dirname($0))
      end
    
    end
  end
end