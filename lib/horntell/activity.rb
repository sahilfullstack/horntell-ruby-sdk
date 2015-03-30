module Horntell
	module Ruby
		class Activity
			extend Horntell::Ruby::Http::ApiRequester

			def self.create(uid, activity)
				return raw_request('post', "/profiles/#{uid}/activities", activity)
			end
		end
	end
end