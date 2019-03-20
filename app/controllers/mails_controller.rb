
class MailsController < ApplicationController
  def index
  	url = "http://apilayer.net/api/check?access_key=d3380e037f72bf7c7d2dbeafd94862de&email=#{params[:email]}"
    response = HTTParty.get(url)
  	render json: response.body
  end
end
