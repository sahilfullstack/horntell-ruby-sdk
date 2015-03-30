module Horntell
	class Horn
		extend Horntell::Http::Request

		# sends a horn to a profile
		def self.to_profile(uid, horn)
			return raw_request('post', "/profiles/#{uid}/horns", horn)
		end

		#sends a horn to multiple profiles
		def self.to_profiles(profiles, horn)
			horn[:profile_uids] = profiles

			return raw_request('post', "/profiles/horns", horn)
		end
	end
end