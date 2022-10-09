require 'pry'
require_relative '../modules/web_server'
require_relative '../modules/requests'

class Activate
  include requests
  include web_server

  attr_accessor :request

  def initialize(request)
    @request = request
  end 

end