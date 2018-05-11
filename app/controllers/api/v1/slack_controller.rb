class Api::V1::SlackController < ApplicationController
	# CSRF 対策を無効にする
	protect_from_forgery except: :notice_slack

	def notice_slack
		payload = {name: params[:name], text: params[:text]}
		logger.info(payload)
		# binding.pry
		notifier = Slack::Notifier.new "https://hooks.slack.com/services/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"
		# res = Net::HTTP.post_form(URI.parse('https://hooks.slack.com/services/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https://hooks.slack.com'), t.to_json)
		# notifier = Slack::Notifier.post_form(URI.parse('https://hooks.slack.com/services/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https://hooks.slack.com'),{'payload' => {'text' => 'ruby'}})
		notifier.ping("<!here> お名前:" + payload[:name] + "様")
		notifier.ping("ご用件:" + payload[:text])
	end
end
