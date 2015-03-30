module Horntell
	module Ruby
		module Http
			class Response
				attr_reader :response
				attr_reader :body
				attr_reader :code

				def initialize(response=nil)
					@response = response
					@body = get_code == 204 ? nil : JSON.parse(body)
				end

				def get_original
					return response
				end

				def get_body
					return body
				end

				def get_code
					return response.code
				end
			end
		end
	end
end