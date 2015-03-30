require 'rubygems'
require 'json'
require 'rest_client'

require "horntell/ruby/version"
require 'horntell/ruby/errors/error.rb'
require 'horntell/ruby/errors/network_error.rb'
require 'horntell/ruby/errors/authentication_error.rb'
require 'horntell/ruby/errors/forbidden_error.rb'
require 'horntell/ruby/errors/invalid_request_error.rb'
require 'horntell/ruby/errors/not_found_error.rb'
require 'horntell/ruby/errors/service_error.rb'

require 'horntell/ruby/http/resource.rb'
require 'horntell/ruby/http/http_client.rb'
require 'horntell/ruby/http/api_requestor.rb'

require 'horntell/ruby/profile.rb'
require 'horntell/ruby/horn.rb'
require 'horntell/ruby/activity.rb'
require 'horntell/ruby/campaign.rb'

module Horntell
	module Ruby
		@base_url = 'https://api.horntell.com'
		@version = 'v1'

		class << self
			attr_accessor :api_key, :api_secret, :base_url, :version
		end
	end
end
