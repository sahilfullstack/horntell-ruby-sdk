module Horntell
	module Http
		module HttpClient
			def request(method, url, headers=nil, params=nil, username, password)
				begin
					opts = {
						:method => method,
						:headers => headers,
						:url => url,
						:payload => params,
						:user => username,
						:password => password,
						:timeout => 80
					}


					response = RestClient::Request.execute(opts)

					return response
				rescue RestClient::ExceptionWithResponse => e
					if code = e.http_code and body = e.http_body
						return handle_api_error(code, body)
					else
						raise Horntell::NetworkError.new
					end
				rescue Exception => e
					raise Horntell::NetworkError.new
				end
			end
		def handle_api_error(code, body)
			error_obj = JSON.parse(body)
			error = error_obj["error"]

			case code
				when 400
					raise invalid_request_error error, code
				when 401
					raise authentication_error error, code
				when 403
					raise forbidden_error error, code
				when 404
					raise not_found_error error, code
				when 500
					raise service_error error, code
				else
					raise error
				end
			end

			def authentication_error(error, code)
				AuthenticationError.new(error["message"], code, error["type"])
			end

			def forbidden_error(error, code)
				ForbiddenError.new(error["message"], code, error["type"])
			end

			def horntell_error(error, code)
				HorntellError.new(error["message"], code, error["type"])
			end

			def invalid_request_error(error, code)
				InvalidRequestError.new(error["message"], code, error["type"])
			end

			def not_found_error(error, code)
				NotFoundError.new(error["message"], code, error["type"])
			end

			def service_error(error, code)
				ServiceError.new(error["message"], code, error["type"])
			end
		end
	end
end