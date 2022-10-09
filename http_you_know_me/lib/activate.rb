# require_relative '../modules/web_server'
require_relative '../modules/requests'
require_relative '../modules/responses'

class Activate
  include Requests
  include Responses
  # include web_server

  attr_accessor :request, :response

  def initialize(request)
    @request = request
  end

end