class EventsController < ApplicationController
	def receive
		if params['pull_request']['state'] == 'open'
	      res = Net::HTTP.post_form(URI.parse('https://f2744a07.ngrok.io/google-home-notifier'), {'text' => '元気ですかー'})
	    end
  	end
end
