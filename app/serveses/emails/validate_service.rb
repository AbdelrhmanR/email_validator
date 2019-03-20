module Emails
  class ValidateService
    include HTTParty
    base_uri 'https://apilayer.net/api'
    ACCESS_KEY = 'd3380e037f72bf7c7d2dbeafd94862de'
    attr_reader :email

    def initialize(email)
      @email = email
    end

    def execute
      JSON.parse(query_response_body)['smtp_check']
    end

    private
      def query_response_body
        self.class.get('/check', query: { access_key: ACCESS_KEY, email: email }).body
      end
  end
end