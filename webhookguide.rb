#!/usr/bin/ruby
require_relative 'lib/horntell.rb'

Horntell::Event.from_webhook(request)

event = Horntell\Event::fromWebhook();

# event contain payload data of your responded user

# get event type
eventType = event['type']; 

if eventType == 'card.responded'
	# this means event has occured 
	# when your user has responded to your assistive card
	
	# resource has details of the resource object
	# in this case resource is card 
	card = event['resource'];

	# this is uid of your profile
	profileUId = card['profile_uid'];

	# id of card
	cardId = card['id'];

	# recipient type
	recipientType = card['recipient_type'];


	triggerType = card['trigger']['type'];

	if triggerType == 'campaign'
		# this means this card is trigerred by campaign
		# id of your campaign
		campaignId = card['trigger']['id'];

		# meta data which you has send while triggering the card
		meta = card['trigger']['meta'];

	else triggerType == 'manual'
		# this card is triggered manually
	end

	# the response which yo3ur user has made
	response = card['response'];

else
	# for other events
end

# do whatever you wanted to do with this information
