require_relative 'activate'

def greeting
  puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*\n\n"
  puts "Welcome to HTTP, You Know Me!\n\n"
  puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*\n\n"
  puts "This application provides you with several options for making HTTP requests to a server built in Ruby!\n\n"
  puts "After you make a request, you will receive a response from the web server.\n\n"
  puts "The server will remain active until you shut it down.\n\n"
end

def path_request
  # sleep(10)
  puts "----------------------------------------\n"
  puts "Please choose from the following requests:\n\n"
  puts "A. Visit Root Path\n"
  puts "B. Visit Hello\n"
  puts "C. Visit Date and Time\n"
  puts "D. Shutdown\n\n"
  # sleep(4)
  puts "What path would you like to visit?"
  user_choice = gets.chomp
  activation = Activate.new(user_choice)
end


greeting
path_request#add loop until shutdown