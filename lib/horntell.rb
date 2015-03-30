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
require_relative 'horntell/http/http_client.rb'
require_relative 'horntell/http/api_requestor.rb'

require_relative 'horntell/profile.rb'
require_relative 'horntell/horn.rb'
require_relative 'horntell/activity.rb'
require_relative 'horntell/campaign.rb'

module Horntell
	@base_url = 'https://api.horntell.com'
	@version = 'v1'

	class << self
		attr_accessor :api_key, :api_secret, :base_url, :version

		def init(key =  nil, secret = nil)
			if key == nil
				raise InvalidRequestError.new('Api\'s key is required', 400, 'invalid_request')
			end

			if secret == nil
				raise InvalidRequestError.new('Api\'s secret is required', 400, 'invalid_request')
			end

			@api_key = key
			@api_secret = secret
		end
		def set_base(base=nil)
			@base_url = base
		end		
		def get_base()
			return @base_url
		end		
		def get_key()
			return @api_key
		end		
		def get_secret()
			return @api_secret
		end

	end
end