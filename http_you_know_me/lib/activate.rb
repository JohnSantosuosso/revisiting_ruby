# require_relative '../modules/web_server'
require_relative '../modules/requests'
require_relative '../modules/responses'

class Activate
  include Requests
  include Responses
  # include WebServer

  attr_accessor :request, :validated_request, :response

  def initialize(request)
    @request = request
    @validated_request = validate_request(request)
    @response = find_response(@validated_request)
  end

end