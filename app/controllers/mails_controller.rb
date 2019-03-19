require 'httparty'

class MailsController < ApplicationController
  def index

  	 response = HTTParty.get('http://apilayer.net/api/check?access_key=d3380e037f72bf7c7d2dbeafd94862de&email=')
  	 render json: response.body
  end
  
end
