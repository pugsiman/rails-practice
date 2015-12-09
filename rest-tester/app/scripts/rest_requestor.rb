require 'rest-client'
URL = 'http://localhost:3000/users'

puts RestClient.get(URL)
puts RestClient.get(URL + '/new')
puts RestClient.get(URL + '/someuser')
puts RestClient.post(URL, '')
