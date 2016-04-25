module Horntell
	class Profile
		extend Horntell::Http::Request

		# find profile by its uid
		def self.find(uid)
			return raw_request('get', "/profiles/#{uid}")
		end

		# creates a profile
		def self.create(profile)
			return raw_request('post', "/profiles", profile)
		end

		# updates a profile by its uid
		def self.update(uid, profile)
			return raw_request('put', "/profiles/#{uid}", profile)
		end

		# deletes a profile by its uid
		def self.delete(uid)
			return raw_request('delete', "/profiles/#{uid}")
		end
	end
end