require 'guid'
require 'base64'
require 'openssl'

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
      
      def encrypt string
        c = cipher
        c.encrypt
        c.key = key

        e = c.update(string) + c.final
        Base64.encode64(e).chop
      end

      def decrypt string, kw = {}
        c = cipher
        c.decrypt
        c.key = key

        c.update(Base64.decode64("#{ string }\n")) + c.final

      end  
      
      private

        def cipher
          OpenSSL::Cipher::Cipher.new("aes-256-ecb")
        end

        def key
          @key ||= "--thisIs0urKeyF0rEncryptionF0rPersona--"[0,56]
        end
    
    end
    
    
    
  end
end