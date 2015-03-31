module Horntell

	class App

		# initializes the key and secret of the app
		def self.init(key =  nil, secret = nil)
			Horntell.key = key
			Horntell.secret = secret
		end

		# sets the base url of the app
		def self.set_base(base=nil)
			Horntell.base = base
		end

		# returns the base url of the app
		def self.get_base()
			return Horntell.base
		end

		# returns the key of the app
		def self.get_key()
			return Horntell.key
		end

		# returns the secret of the app
		def self.get_secret()
			return Horntell.secret
		end

		# sets the version of the app
		def self.set_version(version=nil)
			Horntell.version = version
		end

		# gets the version of the app
		def self.get_version()
			return Horntell.version
		end

	end
end