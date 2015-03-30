require 'json'
require 'rest_client'

require_relative "../horntell/ruby/version.rb"
require_relative '../horntell/ruby/errors/error.rb'
require_relative '../horntell/ruby/errors/network_error.rb'
require_relative '../horntell/ruby/errors/invalid_request_error.rb'
require_relative '../horntell/ruby/errors/authentication_error.rb'
require_relative '../horntell/ruby/errors/forbidden_error.rb'
require_relative '../horntell/ruby/errors/not_found_error.rb'
require_relative '../horntell/ruby/errors/service_error.rb'

require_relative '../horntell/ruby/http/response.rb'
require_relative '../horntell/ruby/http/http_client.rb'
require_relative '../horntell/ruby/http/api_requestor.rb'

require_relative '../horntell/ruby/profile.rb'
require_relative '../horntell/ruby/horn.rb'
require_relative '../horntell/ruby/activity.rb'
require_relative '../horntell/ruby/campaign.rb'

module Horntell
	module Ruby
		@base_url = 'https://api.horntell.com'
		@version = 'v1'

		class << self
			attr_accessor :api_key, :api_secret, :base_url, :version
		end
	end
end
