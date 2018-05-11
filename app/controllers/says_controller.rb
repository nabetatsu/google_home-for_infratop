class SaysController < ApplicationController
  def new
  end

  def create
	res = Net::HTTP.post_form(URI.parse('https://b8ee99df.ngrok.io/google-home-notifier'), {'text' => params[:text]})
	redirect_to root_path
  end
end
