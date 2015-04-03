module Horntell

	class App

		@key = nil
		@secret = nil

		@base = 'https://api.horntell.com'
		@version = 'v1'

		class << self
			attr_accessor :key, :secret, :base, :version
		end

		# initializes the key and secret of the app
		def self.init(key =  nil, secret = nil)
			@key = "#{key}"
			@secret = "#{secret}"
		end

		# sets the base url of the app
		def self.set_base(base = nil)
			@base = "#{base}"
		end

		# returns the base url of the app
		def self.get_base()
			return @base
		end

		# returns the key of the app
		def self.get_key()
			return @key
		end

		# returns the secret of the app
		def self.get_secret()
			return @secret
		end

		# sets the version of the app
		def self.set_version(version = nil)
			@version = "#{version}"
		end

		# gets the version of the app
		def self.get_version()
			return @version
		end

		#return hash hmac 256
		def self.hash(uid)
			sha256 = OpenSSL::Digest::SHA256.new
			hash = OpenSSL::HMAC.hexdigest(sha256, @secret, "#{uid}")

			return hash
		end
	end
end