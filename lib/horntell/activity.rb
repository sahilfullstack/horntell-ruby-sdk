module Horntell
	class Activity
		extend Horntell::Http::ApiRequester

		def self.create(uid, activity)
			return raw_request('post', "/profiles/#{uid}/activities", activity)
		end
	end
end