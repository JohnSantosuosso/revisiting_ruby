# require_relative '../modules/web_server'
require_relative '../modules/requests'
require_relative '../modules/responses'

class Activate
  include Requests
  include Responses
  # include WebServer

  attr_accessor :request, :valid_request

  def initialize(request)
    @request = request
    @valid_request = validate_request(request)
  end

  def send_request
    @request #gets sent to response
  end

end