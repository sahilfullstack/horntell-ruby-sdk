require 'json'
require 'rest_client'

require_relative "../horntell/version.rb"
require_relative '../horntell/errors/error.rb'
require_relative '../horntell/errors/network_error.rb'
require_relative '../horntell/errors/invalid_request_error.rb'
require_relative '../horntell/errors/authentication_error.rb'
require_relative '../horntell/errors/forbidden_error.rb'
require_relative '../horntell/errors/not_found_error.rb'
require_relative '../horntell/errors/service_error.rb'

require_relative '../horntell/http/response.rb'
require_relative '../horntell/http/http_client.rb'
require_relative '../horntell/http/api_requestor.rb'

require_relative '../horntell/profile.rb'
require_relative '../horntell/horn.rb'
require_relative '../horntell/activity.rb'
require_relative '../horntell/campaign.rb'

module Horntell
	module Ruby
		@base_url = 'https://api.horntell.com'
		@version = 'v1'

		class << self
			attr_accessor :api_key, :api_secret, :base_url, :version
		end
	end
end
