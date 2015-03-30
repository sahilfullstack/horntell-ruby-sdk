module Horntell
	module Ruby
		module Http
			module ApiRequester
				include Horntell::Ruby::Http::HttpClient
				def raw_request(method = nil, endpoint = nil, params = nil)

					url = Horntell::Ruby.base_url+endpoint

					headers = {
						'Accept'=> "application/vnd.horntell.#{Horntell::Ruby::version}+json",
						'Content-Type' => 'application/json'
					}

					#parsing data into json
					params = params.to_json

					response = request(method,
						url,
						headers=headers,
						params=params,
						userName=Horntell::Ruby.api_key,
						password=Horntell::Ruby.api_secret)
					# return response.class
					return Horntell::Ruby::Http::Resource.new(response)
				end
			end
		end
	end
end