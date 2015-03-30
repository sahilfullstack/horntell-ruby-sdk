module Horntell
	class Campaign
		extend Horntell::Http::Request

		# triggers campaign for single profile
		def self.to_profile(uid, campaignId)
			return raw_request('post', "/profiles/#{uid}/campaigns/#{campaignId}")
		end

		#triggers campaign for multiple profile
		def self.to_profiles(profiles, campaignId)
			profiles = { :profile_uids => profiles }

			return raw_request('post', "/profiles/campaigns/#{campaignId}", profiles)
		end
	end
end