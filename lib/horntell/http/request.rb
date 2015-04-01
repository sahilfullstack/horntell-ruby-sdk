module Horntell
	module Http
		module Request
			include Horntell::Http::Client
			def raw_request(method = nil, endpoint = nil, params = nil)

				url = Horntell::App.base+endpoint

				headers = {
					'Accept'=> "application/vnd.horntell.#{Horntell::App.version}+json",
					'Content-Type' => 'application/json'
				}

				#parsing data into json
				params = params.to_json

				response = request(method,
					url,
					headers=headers,
					params=params,
					username=Horntell::App.key,
					password=Horntell::App.secret)
				# return response.class
				return Horntell::Http::Response.new(response)
			end
		end
	end
end