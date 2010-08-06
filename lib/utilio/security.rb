require 'guid'

module Utilio
  class Security
    
  
    class << self
      
      def self.hash_string(value)
        Utils.secure_digest( value )
      end

      def self.secure_digest(*args)
        Digest::SHA2.hexdigest(args.flatten.join('--'))
      end

      def self.generate_guid!
        Guid.new.to_s
      end
    
    end
  end
end