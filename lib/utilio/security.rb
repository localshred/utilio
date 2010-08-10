require 'guid'

module Utilio
  class Security
    
  
    class << self
      
      def hash_string(value)
        Security.secure_digest( value )
      end

      def secure_digest(*args)
        Digest::SHA2.hexdigest(args.flatten.join('--'))
      end

      def generate_guid!
        Guid.new.to_s
      end
    
    end
  end
end