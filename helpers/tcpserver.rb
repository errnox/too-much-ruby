require 'socket'


# A simple server

server = TCPServer.new('localhost', '55555')

loop do
  client = server.accept
  client.puts Time.now.ctime
  client.puts 'Closing the connection. Bye!'
  client.close
end


# A multi-threaded server (serving multiple clients)

# server = TCPServer.new('localhost', '55555')

# loop do
#   puts "LOOP"
#   Thread.start(server.accept) do |client|
#     puts "CONNECTION"
#     client.puts 'Hello!'
#     client.puts "Time is #{Time.now}"
#     client.write "Time is #{Time.now}"
#     client.close
#   end
# end
