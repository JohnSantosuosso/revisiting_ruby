module Responses

  def find_response(validated_request)
    check_response_table(validated_request)
  end

  def check_response_table(validated_request)
    response_match = []
    responses = {
      'debug_info'=>build_debug_response,
      'hello_world'=>build_hello_world_response,
      'datetime'=>build_datetime_response,
      'shutdown'=>shutdown
    }
    responses.each do |key, value|
      response_match << value if validated_request == key
    end
    response_match.join('')
  end

  def build_debug_response
    return "<pre>Verb: POST\nPath: /\nProtocol: HTTP/1.1\nHost: 127.0.0.1\nPort: 9292\nOrigin: 127.0.0.1\nAccept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\n</pre>"
  end

  def build_hello_world_response
    return "Hello World"
  end

  def build_datetime_response
    return Time.now.strftime("%m %M %p %A %B %e")
  end

  def shutdown
  end

end