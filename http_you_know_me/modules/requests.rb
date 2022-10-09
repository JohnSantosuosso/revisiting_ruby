module Requests
  def validate_request(request)
    if request_check(request) == true
      find_request_match(request)
    else
      return 'bad_request'
    end
  end

  def request_check(request)
    ('a'..'d').to_a.any? {|letter| letter == request.downcase}
  end

  def find_request_match(request)
    request_match = []
    requests = {
      'a' => 'debug_info',
      'b' => 'hello_world',
      'c' => 'datetime',
      'd' => 'shutdown'
    }
    requests.each do |key, value|
      request_match << value if request.downcase == key
    end
    request_match.join('')
  end

end