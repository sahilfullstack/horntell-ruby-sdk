require 'json'
require 'rest_client'

require_relative "horntell/version.rb"
require_relative 'horntell/errors/error.rb'
require_relative 'horntell/errors/network_error.rb'
require_relative 'horntell/errors/invalid_request_error.rb'
require_relative 'horntell/errors/authentication_error.rb'
require_relative 'horntell/errors/forbidden_error.rb'
require_relative 'horntell/errors/not_found_error.rb'
require_relative 'horntell/errors/service_error.rb'

require_relative 'horntell/http/response.rb'
require_relative 'horntell/http/client.rb'
require_relative 'horntell/http/request.rb'

require_relative 'horntell/profile.rb'
require_relative 'horntell/horn.rb'
require_relative 'horntell/campaign.rb'

module Horntell
	@base = 'https://api.horntell.com'
	@version = 'v1'

	class << self
		attr_accessor :key, :secret, :base, :version

		def init(key =  nil, secret = nil)
			@key = key
			@secret = secret
		end

		def set_base(base=nil)
			@base = base
		end

		def get_base()
			return @base
		end

		def get_key()
			return @key
		end

		def get_secret()
			return @secret
		end
	end
end