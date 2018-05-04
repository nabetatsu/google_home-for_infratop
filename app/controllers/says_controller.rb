class SaysController < ApplicationController
  def new
  end

  def create
	res = Net::HTTP.post_form(URI.parse('https://36b91362.ngrok.io/google-home-notifier'), {'text' => params[:text]})
	redirect_to root_path
  end
end
