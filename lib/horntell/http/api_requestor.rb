module Horntell
	module Http
		module ApiRequester
			include Horntell::Http::HttpClient
			def raw_request(method = nil, endpoint = nil, params = nil)

				url = Horntell.base_url+endpoint
				
				headers = {
					'Accept'=> "application/vnd.horntell.#{Horntell::version}+json",
					'Content-Type' => 'application/json'
				}

				#parsing data into json
				params = params.to_json

				response = request(method,
					url,
					headers=headers,
					params=params,
					username=Horntell.api_key,
					password=Horntell.api_secret)
				# return response.class
				return Horntell::Http::Response.new(response)
			end
		end
	end
end