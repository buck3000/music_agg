require 'soundcloud'

# create client object with app credentials
client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'],
                        :client_secret => ENV['SOUNDCLOUD_CLIENT_SECRET'],
                        :username => 'dcemp',
                        :password => 'Charlie99!',
                        :redirect_uri => 'http://localhost:9393/')


track = client.get('/tracks/145997673')

puts track

# redirect user to authorize URL
# redirect_to client.authorize_url()