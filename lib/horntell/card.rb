module Horntell
	class Card
		extend Horntell::Http::Request

		@default = 'default'
		
		class << self
			attr_accessor :default
		end

		# sends a card to a profile
		def self.to_profile(uid, card)
			card[:canvas] =	card[:canvas] ? card[:canvas] : @default

			return raw_request('post', "/profiles/#{uid}/cards", card)
		end

		#sends a card to multiple profiles
		def self.to_profiles(profiles, card)
			card[:profile_uids] = profiles
			card[:canvas] =	card[:canvas] ? card[:canvas] : @default

			return raw_request('post', "/profiles/cards", card)
		end
		# sends a card to a channel
		def self.to_channel(uid, card)
			card[:canvas] =	card[:canvas] ? card[:canvas] : @default

			return raw_request('post', "/channels/#{uid}/cards", card)
		end

		#sends a card to multiple channels
		def self.to_channels(channels, card)
			card[:channel_uids] = channels
			card[:canvas] =	card[:canvas] ? card[:canvas] : @default

			return raw_request('post', "/channels/cards", card)
		end
	end
end