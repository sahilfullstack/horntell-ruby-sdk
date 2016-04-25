module Horntell 
	class Event

		# returns parsed payload in array
		def self.from_webhook(request)
			payload = request.body.read
			 data_parsed = CGI.parse(payload)
			return JSON.parse(data_parsed['horntell_event'][0])
		end
	end
end