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
        File.expand_path(File.join(*([app_root, folders].flatten.uniq.tap{|path| path.delete(nil) })))
      end
    
      def app *folders
        root(*['app', folders].flatten)
      end
    
      def yaml_file *path_to_file
        YAML.load_file(root(*path_to_file))
      end
      
      private
      
      def app_root
        @app_root || File.expand_path(File.dirname($0))
      end
    
    end
  end
end