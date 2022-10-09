# require_relative '../modules/web_server'
require_relative '../modules/requests'
require_relative '../modules/responses'

class Activate
  include Requests
  include Responses
  # include WebServer

  attr_accessor :request, :validated_request

  def initialize(request)
    @request = request
    @validated_request = validate_request(request)
  end

  def send_request
    @validated_request # find matching response
  end

end