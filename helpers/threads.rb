#--------------------------------------------------------------------------
# DEFUNCT! Let's blame Net::HTTP...

# require 'net/http'

# urls = ["www.google.com",
#         "www.youtube.com",
#         "www.example.com"]

# threads = []

# urls.each do |url|
#   threads << Thread.new(url) do |url|
#     h = Net::HTTP.new(url, 80)
#     puts 'Fetching: #{url}'
#     # resp, data = h.get('/', nil)
#     # puts 'Got #{url}: #{resp.message}'
#   end
# end

# threads.each { |thread| thread.join }
#--------------------------------------------------------------------------

count = 0
arr = []

10.times do |i|
  arr[i] = Thread.new {
    sleep(rand(10)/10.0)
    Thread.current['mycount'] = count
    count += 1
  }
end

arr.each { |thread| thread.join; print thread['mycount'], ', ' }
puts 'count = #{count}'
